
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_accessx_args {scalar_t__ a_accmode; int a_td; int a_cred; int a_vp; } ;
typedef scalar_t__ accmode_t ;


 int VOP_ACCESS (int ,scalar_t__,int ,int ) ;
 int vfs_unixify_accmode (scalar_t__*) ;

int
vop_stdaccessx(struct vop_accessx_args *ap)
{
 int error;
 accmode_t accmode = ap->a_accmode;

 error = vfs_unixify_accmode(&accmode);
 if (error != 0)
  return (error);

 if (accmode == 0)
  return (0);

 return (VOP_ACCESS(ap->a_vp, accmode, ap->a_cred, ap->a_td));
}
