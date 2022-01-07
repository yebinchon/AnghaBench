
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_2__ {scalar_t__ fs_ronly; } ;


 TYPE_1__* ITOFS (struct inode*) ;

int
ffs_rdonly(struct inode *ip)
{

 return (ITOFS(ip)->fs_ronly != 0);
}
