
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vptofh_args {scalar_t__ a_fhp; int a_vp; } ;
struct udf_node {int hash_id; } ;
struct ifid {int ifid_len; int ifid_ino; } ;


 struct udf_node* VTON (int ) ;

__attribute__((used)) static int
udf_vptofh(struct vop_vptofh_args *a)
{
 struct udf_node *node;
 struct ifid *ifhp;

 node = VTON(a->a_vp);
 ifhp = (struct ifid *)a->a_fhp;
 ifhp->ifid_len = sizeof(struct ifid);
 ifhp->ifid_ino = node->hash_id;

 return (0);
}
