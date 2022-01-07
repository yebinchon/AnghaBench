
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct vnode {int v_type; struct fuse_vnode_data* v_data; int v_vflag; } ;
struct fuse_vnode_data {int cached_attrs; int handles; scalar_t__ nid; } ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 scalar_t__ FUSE_ROOT_ID ;
 int LIST_INIT (int *) ;
 int VV_ROOT ;
 int counter_u64_add (int ,int) ;
 int fuse_node_count ;
 int vattr_null (int *) ;

__attribute__((used)) static void
fuse_vnode_init(struct vnode *vp, struct fuse_vnode_data *fvdat,
    uint64_t nodeid, enum vtype vtyp)
{
 fvdat->nid = nodeid;
 LIST_INIT(&fvdat->handles);
 vattr_null(&fvdat->cached_attrs);
 if (nodeid == FUSE_ROOT_ID) {
  vp->v_vflag |= VV_ROOT;
 }
 vp->v_type = vtyp;
 vp->v_data = fvdat;

 counter_u64_add(fuse_node_count, 1);
}
