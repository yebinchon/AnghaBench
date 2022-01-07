
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_nlink; int i_mode; } ;


 int S_ISDIR (int ) ;

__attribute__((used)) static void
ext2_dec_nlink(struct inode *ip)
{

 if (!S_ISDIR(ip->i_mode) || ip->i_nlink > 2)
  ip->i_nlink--;
}
