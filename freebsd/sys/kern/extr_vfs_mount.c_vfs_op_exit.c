
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;


 int MNT_ILOCK (struct mount*) ;
 int MNT_IUNLOCK (struct mount*) ;
 int vfs_op_exit_locked (struct mount*) ;

void
vfs_op_exit(struct mount *mp)
{

 MNT_ILOCK(mp);
 vfs_op_exit_locked(mp);
 MNT_IUNLOCK(mp);
}
