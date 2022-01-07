
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_object_t ;
typedef int uid_t ;
struct TYPE_4__ {int tn_aobj; } ;
struct TYPE_3__ {struct tmpfs_node* tn_parent; int * tn_readdir_lastp; int tn_readdir_lastn; int tn_dupindex; int tn_dirhead; } ;
struct tmpfs_node {int tn_type; int tn_refcount; int tn_attached; TYPE_2__ tn_reg; int tn_size; int tn_link; TYPE_1__ tn_dir; int tn_links; scalar_t__ tn_rdev; int tn_id; int tn_mode; int tn_gid; int tn_uid; int tn_atime; int tn_mtime; int tn_ctime; int tn_birthtime; } ;
struct tmpfs_mount {scalar_t__ tm_nodes_inuse; scalar_t__ tm_nodes_max; int tm_refcount; int tm_nodes_used; int * tm_root; int tm_ino_unr; int tm_node_pool; } ;
struct mount {int mnt_kern_flag; } ;
typedef int mode_t ;
typedef int gid_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
typedef scalar_t__ dev_t ;


 int EBUSY ;
 int ENOSPC ;
 int EROFS ;
 int IFF (int,int) ;
 int IMPLIES (int ,int) ;
 int LIST_INIT (int *) ;
 int LIST_INSERT_HEAD (int *,struct tmpfs_node*,int ) ;
 int MAXPATHLEN ;
 int MNTK_UNMOUNT ;
 int MNT_RDONLY ;
 int MPASS (int) ;
 int M_TMPFSNAME ;
 int M_WAITOK ;
 int OBJT_SWAP ;
 int OBJ_NOSPLIT ;
 int OBJ_ONEMAPPING ;
 int OBJ_TMPFS_NODE ;
 int RB_INIT (int *) ;
 int TMPFS_LOCK (struct tmpfs_mount*) ;
 int TMPFS_NODE_LOCK (struct tmpfs_node*) ;
 int TMPFS_NODE_UNLOCK (struct tmpfs_node*) ;
 int TMPFS_UNLOCK (struct tmpfs_mount*) ;





 int VM_OBJECT_WLOCK (int ) ;
 int VM_OBJECT_WUNLOCK (int ) ;
 int VM_PROT_DEFAULT ;
 scalar_t__ VNOVAL ;


 int alloc_unr64 (int *) ;
 int malloc (int ,int ,int ) ;
 int memcpy (int ,char const*,int ) ;
 int panic (char*,struct tmpfs_node*,int) ;
 int strlen (char const*) ;
 scalar_t__ tmpfs_pages_check_avail (struct tmpfs_mount*,int) ;
 int tn_entries ;
 scalar_t__ uma_zalloc_arg (int ,struct tmpfs_mount*,int ) ;
 int vfs_timestamp (int *) ;
 int vm_object_clear_flag (int ,int ) ;
 int vm_object_set_flag (int ,int) ;
 int vm_pager_allocate (int ,int *,int ,int ,int ,int *) ;

int
tmpfs_alloc_node(struct mount *mp, struct tmpfs_mount *tmp, enum vtype type,
    uid_t uid, gid_t gid, mode_t mode, struct tmpfs_node *parent,
    const char *target, dev_t rdev, struct tmpfs_node **node)
{
 struct tmpfs_node *nnode;
 vm_object_t obj;



 MPASS(IMPLIES(tmp->tm_root == ((void*)0), parent == ((void*)0) && type == 132));

 MPASS(IFF(type == 130, target != ((void*)0)));
 MPASS(IFF(type == 134 || type == 133, rdev != VNOVAL));

 if (tmp->tm_nodes_inuse >= tmp->tm_nodes_max)
  return (ENOSPC);
 if (tmpfs_pages_check_avail(tmp, 1) == 0)
  return (ENOSPC);

 if ((mp->mnt_kern_flag & MNTK_UNMOUNT) != 0) {
  return (EBUSY);
 }
 if ((mp->mnt_kern_flag & MNT_RDONLY) != 0)
  return (EROFS);

 nnode = (struct tmpfs_node *)uma_zalloc_arg(tmp->tm_node_pool, tmp,
     M_WAITOK);


 nnode->tn_type = type;
 vfs_timestamp(&nnode->tn_atime);
 nnode->tn_birthtime = nnode->tn_ctime = nnode->tn_mtime =
     nnode->tn_atime;
 nnode->tn_uid = uid;
 nnode->tn_gid = gid;
 nnode->tn_mode = mode;
 nnode->tn_id = alloc_unr64(&tmp->tm_ino_unr);
 nnode->tn_refcount = 1;


 switch (nnode->tn_type) {
 case 134:
 case 133:
  nnode->tn_rdev = rdev;
  break;

 case 132:
  RB_INIT(&nnode->tn_dir.tn_dirhead);
  LIST_INIT(&nnode->tn_dir.tn_dupindex);
  MPASS(parent != nnode);
  MPASS(IMPLIES(parent == ((void*)0), tmp->tm_root == ((void*)0)));
  nnode->tn_dir.tn_parent = (parent == ((void*)0)) ? nnode : parent;
  nnode->tn_dir.tn_readdir_lastn = 0;
  nnode->tn_dir.tn_readdir_lastp = ((void*)0);
  nnode->tn_links++;
  TMPFS_NODE_LOCK(nnode->tn_dir.tn_parent);
  nnode->tn_dir.tn_parent->tn_links++;
  TMPFS_NODE_UNLOCK(nnode->tn_dir.tn_parent);
  break;

 case 131:

 case 128:
  break;

 case 130:
  MPASS(strlen(target) < MAXPATHLEN);
  nnode->tn_size = strlen(target);
  nnode->tn_link = malloc(nnode->tn_size, M_TMPFSNAME,
      M_WAITOK);
  memcpy(nnode->tn_link, target, nnode->tn_size);
  break;

 case 129:
  obj = nnode->tn_reg.tn_aobj =
      vm_pager_allocate(OBJT_SWAP, ((void*)0), 0, VM_PROT_DEFAULT, 0,
   ((void*)0) );
  VM_OBJECT_WLOCK(obj);

  vm_object_set_flag(obj, OBJ_NOSPLIT | OBJ_TMPFS_NODE);
  vm_object_clear_flag(obj, OBJ_ONEMAPPING);
  VM_OBJECT_WUNLOCK(obj);
  break;

 default:
  panic("tmpfs_alloc_node: type %p %d", nnode,
      (int)nnode->tn_type);
 }

 TMPFS_LOCK(tmp);
 LIST_INSERT_HEAD(&tmp->tm_nodes_used, nnode, tn_entries);
 nnode->tn_attached = 1;
 tmp->tm_nodes_inuse++;
 tmp->tm_refcount++;
 TMPFS_UNLOCK(tmp);

 *node = nnode;
 return (0);
}
