
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef void* uint64_t ;
typedef size_t uint32_t ;
struct per_user_data {int user_data_lock; int gref_tree; } ;
struct ioctl_gntdev_alloc_gref {int flags; int count; int * gref_ids; void* index; int domid; } ;
struct gntdev_gref {int gref_id; TYPE_1__* page; int * notify; void* file_index; } ;
struct TYPE_8__ {int to_kill_grefs_mtx; int to_kill_grefs; } ;
struct TYPE_7__ {int list; } ;
struct TYPE_6__ {int flags; int valid; } ;


 int EINVAL ;
 int ENOMEM ;
 int GNTDEV_ALLOC_FLAG_WRITABLE ;
 int GRANT_REF_INVALID ;
 int LOG_ERR ;
 int M_GNTDEV ;
 int M_WAITOK ;
 int PAGE_SHIFT ;
 size_t PAGE_SIZE ;
 int PG_ZERO ;
 int RB_INSERT (int ,int *,struct gntdev_gref*) ;
 int STAILQ_INSERT_TAIL (int *,struct gntdev_gref*,int ) ;
 int VM_ALLOC_NOOBJ ;
 int VM_ALLOC_NORMAL ;
 int VM_ALLOC_WIRED ;
 int VM_ALLOC_ZERO ;
 int VM_PAGE_BITS_ALL ;
 int VM_PAGE_TO_PHYS (TYPE_1__*) ;
 TYPE_4__ cleanup_data ;
 int cleanup_task ;
 int devfs_get_cdevpriv (void**) ;
 int get_file_offset (struct per_user_data*,int,void**) ;
 int gnttab_grant_foreign_access (int ,int,int,int *) ;
 TYPE_3__ gref_next ;
 int gref_tree_head ;
 int log (int ,char*) ;
 struct gntdev_gref* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmap_zero_page (TYPE_1__*) ;
 int suword32 (int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 TYPE_1__* vm_page_alloc (int *,int ,int) ;

__attribute__((used)) static int
gntdev_alloc_gref(struct ioctl_gntdev_alloc_gref *arg)
{
 uint32_t i;
 int error, readonly;
 uint64_t file_offset;
 struct gntdev_gref *grefs;
 struct per_user_data *priv_user;

 readonly = !(arg->flags & GNTDEV_ALLOC_FLAG_WRITABLE);

 error = devfs_get_cdevpriv((void**) &priv_user);
 if (error != 0)
  return (EINVAL);


 taskqueue_enqueue(taskqueue_thread, &cleanup_task);


 error = get_file_offset(priv_user, arg->count, &file_offset);
 if (error != 0)
  return (error);


 grefs = malloc(sizeof(*grefs) * arg->count, M_GNTDEV, M_WAITOK);

 for (i = 0; i < arg->count; i++) {
  grefs[i].file_index = file_offset + i * PAGE_SIZE;
  grefs[i].gref_id = GRANT_REF_INVALID;
  grefs[i].notify = ((void*)0);
  grefs[i].page = vm_page_alloc(((void*)0), 0, VM_ALLOC_NORMAL
   | VM_ALLOC_NOOBJ | VM_ALLOC_WIRED | VM_ALLOC_ZERO);
  if (grefs[i].page == ((void*)0)) {
   log(LOG_ERR, "Page allocation failed.");
   error = ENOMEM;
   break;
  }
  if ((grefs[i].page->flags & PG_ZERO) == 0) {




   pmap_zero_page(grefs[i].page);
  }
  grefs[i].page->valid = VM_PAGE_BITS_ALL;

  error = gnttab_grant_foreign_access(arg->domid,
   (VM_PAGE_TO_PHYS(grefs[i].page) >> PAGE_SHIFT),
   readonly, &grefs[i].gref_id);
  if (error != 0) {
   log(LOG_ERR, "Grant Table Hypercall failed.");
   break;
  }
 }

 if (error != 0) {






  mtx_lock(&cleanup_data.to_kill_grefs_mtx);
  for (i = 0; i < arg->count; i++)
   STAILQ_INSERT_TAIL(&cleanup_data.to_kill_grefs,
       &grefs[i], gref_next.list);
  mtx_unlock(&cleanup_data.to_kill_grefs_mtx);

  taskqueue_enqueue(taskqueue_thread, &cleanup_task);

  return (error);
 }


 arg->index = file_offset;
 for (i = 0; i < arg->count; i++)
  suword32(&arg->gref_ids[i], grefs[i].gref_id);


 mtx_lock(&priv_user->user_data_lock);
 for (i = 0; i < arg->count; i++)
  RB_INSERT(gref_tree_head, &priv_user->gref_tree, &grefs[i]);
 mtx_unlock(&priv_user->user_data_lock);

 return (error);
}
