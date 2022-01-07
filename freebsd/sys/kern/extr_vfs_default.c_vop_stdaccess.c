
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_access_args {int a_accmode; int a_td; int a_cred; int a_vp; } ;


 int KASSERT (int,char*) ;
 int VADMIN ;
 int VAPPEND ;
 int VEXEC ;
 int VOP_ACCESSX (int ,int,int ,int ) ;
 int VREAD ;
 int VWRITE ;

int
vop_stdaccess(struct vop_access_args *ap)
{

 KASSERT((ap->a_accmode & ~(VEXEC | VWRITE | VREAD | VADMIN |
     VAPPEND)) == 0, ("invalid bit in accmode"));

 return (VOP_ACCESSX(ap->a_vp, ap->a_accmode, ap->a_cred, ap->a_td));
}
