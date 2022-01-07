
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufsmount {scalar_t__ um_fstype; } ;
struct inode {struct inode* i_din2; struct inode* i_din1; } ;


 scalar_t__ UFS1 ;
 int uma_inode ;
 int uma_ufs1 ;
 int uma_ufs2 ;
 int uma_zfree (int ,struct inode*) ;

__attribute__((used)) static void
ffs_ifree(struct ufsmount *ump, struct inode *ip)
{

 if (ump->um_fstype == UFS1 && ip->i_din1 != ((void*)0))
  uma_zfree(uma_ufs1, ip->i_din1);
 else if (ip->i_din2 != ((void*)0))
  uma_zfree(uma_ufs2, ip->i_din2);
 uma_zfree(uma_inode, ip);
}
