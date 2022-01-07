
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veriexec_devhead {int dummy; } ;
struct veriexec_dev_list {scalar_t__ fsid; int file_head; } ;
typedef scalar_t__ dev_t ;


 struct veriexec_dev_list* LIST_FIRST (struct veriexec_devhead*) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (struct veriexec_devhead*,struct veriexec_dev_list*,int ) ;
 struct veriexec_dev_list* LIST_NEXT (struct veriexec_dev_list*,int ) ;
 int M_NOWAIT ;
 int M_VERIEXEC ;
 int M_WAITOK ;
 int entries ;
 int free (struct veriexec_dev_list*,int ) ;
 struct veriexec_dev_list* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ve_mutex ;

__attribute__((used)) static struct veriexec_dev_list *
find_veriexec_dev(dev_t fsid, struct veriexec_devhead *head)
{
 struct veriexec_dev_list *lp;
 struct veriexec_dev_list *np = ((void*)0);

search:

 for (lp = LIST_FIRST(head); lp != ((void*)0);
      lp = LIST_NEXT(lp, entries))
  if (lp->fsid == fsid) break;

 if (lp == ((void*)0)) {
  if (np == ((void*)0)) {





   np = malloc(sizeof(struct veriexec_dev_list),
       M_VERIEXEC, M_NOWAIT);
   if (np == ((void*)0)) {




    mtx_unlock(&ve_mutex);
    np = malloc(sizeof(struct veriexec_dev_list),
        M_VERIEXEC, M_WAITOK);
    mtx_lock(&ve_mutex);




    goto search;
   }
  }
  if (np) {

   lp = np;
   LIST_INIT(&(lp->file_head));
   lp->fsid = fsid;
   LIST_INSERT_HEAD(head, lp, entries);
  }
 } else if (np) {



  mtx_unlock(&ve_mutex);
  free(np, M_VERIEXEC);
  mtx_lock(&ve_mutex);
 }

 return (lp);
}
