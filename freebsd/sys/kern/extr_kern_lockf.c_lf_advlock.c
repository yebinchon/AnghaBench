
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_quad_t ;
struct vop_advlockasync_args {int * a_cookiep; int * a_task; int a_flags; int a_fl; int a_op; int a_id; int a_vp; } ;
struct vop_advlock_args {int a_flags; int a_fl; int a_op; int a_id; int a_vp; } ;
struct lockf {int dummy; } ;


 int lf_advlockasync (struct vop_advlockasync_args*,struct lockf**,int ) ;

int
lf_advlock(struct vop_advlock_args *ap, struct lockf **statep, u_quad_t size)
{
 struct vop_advlockasync_args a;

 a.a_vp = ap->a_vp;
 a.a_id = ap->a_id;
 a.a_op = ap->a_op;
 a.a_fl = ap->a_fl;
 a.a_flags = ap->a_flags;
 a.a_task = ((void*)0);
 a.a_cookiep = ((void*)0);

 return (lf_advlockasync(&a, statep, size));
}
