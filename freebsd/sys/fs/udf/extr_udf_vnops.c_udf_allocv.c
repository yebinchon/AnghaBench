
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct mount {int dummy; } ;


 int getnewvnode (char*,struct mount*,int *,struct vnode**) ;
 int printf (char*) ;
 int udf_vnodeops ;

int
udf_allocv(struct mount *mp, struct vnode **vpp, struct thread *td)
{
 int error;
 struct vnode *vp;

 error = getnewvnode("udf", mp, &udf_vnodeops, &vp);
 if (error) {
  printf("udf_allocv: failed to allocate new vnode\n");
  return (error);
 }

 *vpp = vp;
 return (0);
}
