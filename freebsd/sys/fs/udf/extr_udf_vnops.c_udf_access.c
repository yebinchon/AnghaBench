
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_access_args {int a_accmode; int a_cred; struct vnode* a_vp; } ;
struct vnode {int v_type; } ;
struct udf_node {TYPE_1__* fentry; } ;
typedef int mode_t ;
typedef int accmode_t ;
struct TYPE_2__ {int gid; int uid; } ;


 int EROFS ;



 struct udf_node* VTON (struct vnode*) ;
 int VWRITE ;
 int udf_permtomode (struct udf_node*) ;
 int vaccess (int,int ,int ,int ,int,int ,int *) ;

__attribute__((used)) static int
udf_access(struct vop_access_args *a)
{
 struct vnode *vp;
 struct udf_node *node;
 accmode_t accmode;
 mode_t mode;

 vp = a->a_vp;
 node = VTON(vp);
 accmode = a->a_accmode;

 if (accmode & VWRITE) {
  switch (vp->v_type) {
  case 130:
  case 129:
  case 128:
   return (EROFS);

  default:
   break;
  }
 }

 mode = udf_permtomode(node);

 return (vaccess(vp->v_type, mode, node->fentry->uid, node->fentry->gid,
     accmode, a->a_cred, ((void*)0)));
}
