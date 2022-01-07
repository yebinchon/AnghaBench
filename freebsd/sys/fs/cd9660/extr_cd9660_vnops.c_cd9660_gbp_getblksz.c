
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct iso_node {int i_mnt; } ;
typedef int daddr_t ;


 struct iso_node* VTOI (struct vnode*) ;
 int blksize (int ,struct iso_node*,int ) ;

__attribute__((used)) static int
cd9660_gbp_getblksz(struct vnode *vp, daddr_t lbn)
{
 struct iso_node *ip;

 ip = VTOI(vp);
 return (blksize(ip->i_mnt, ip, lbn));
}
