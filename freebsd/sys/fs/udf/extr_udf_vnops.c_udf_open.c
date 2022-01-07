
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_open_args {int a_td; int a_vp; } ;
struct udf_node {TYPE_1__* fentry; } ;
typedef int off_t ;
struct TYPE_2__ {int inf_len; } ;


 struct udf_node* VTON (int ) ;
 int le64toh (int ) ;
 int vnode_create_vobject (int ,int ,int ) ;

__attribute__((used)) static int
udf_open(struct vop_open_args *ap) {
 struct udf_node *np = VTON(ap->a_vp);
 off_t fsize;

 fsize = le64toh(np->fentry->inf_len);
 vnode_create_vobject(ap->a_vp, fsize, ap->a_td);
 return 0;
}
