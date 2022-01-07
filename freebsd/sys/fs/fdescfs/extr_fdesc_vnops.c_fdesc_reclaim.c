
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_reclaim_args {struct vnode* a_vp; } ;
struct vnode {int * v_data; } ;
struct fdescnode {int dummy; } ;


 int M_TEMP ;
 struct fdescnode* VTOFDESC (struct vnode*) ;
 int fdesc_remove_entry (struct fdescnode*) ;
 int free (int *,int ) ;

__attribute__((used)) static int
fdesc_reclaim(struct vop_reclaim_args *ap)
{
 struct vnode *vp;
 struct fdescnode *fd;

  vp = ap->a_vp;
  fd = VTOFDESC(vp);
 fdesc_remove_entry(fd);
 free(vp->v_data, M_TEMP);
 vp->v_data = ((void*)0);
 return (0);
}
