
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_flag; } ;


 int IN_ACCESS ;
 int IN_CHANGE ;
 int IN_MODIFIED ;
 int IN_UPDATE ;

__attribute__((used)) static bool
sync_doupdate(struct inode *ip)
{

 return ((ip->i_flag & (IN_ACCESS | IN_CHANGE | IN_MODIFIED |
     IN_UPDATE)) != 0);
}
