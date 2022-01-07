
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vptofh_args {scalar_t__ a_fhp; int a_vp; } ;
struct ufid {int ufid_len; int ufid_gen; int ufid_ino; } ;
struct inode {int i_gen; int i_number; } ;


 struct inode* VTOI (int ) ;

__attribute__((used)) static int
ffs_vptofh(struct vop_vptofh_args *ap)






{
 struct inode *ip;
 struct ufid *ufhp;

 ip = VTOI(ap->a_vp);
 ufhp = (struct ufid *)ap->a_fhp;
 ufhp->ufid_len = sizeof(struct ufid);
 ufhp->ufid_ino = ip->i_number;
 ufhp->ufid_gen = ip->i_gen;
 return (0);
}
