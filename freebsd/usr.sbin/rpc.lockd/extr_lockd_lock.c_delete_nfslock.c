
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;
typedef enum nfslock_status { ____Placeholder_nfslock_status } nfslock_status ;


 int LIST_REMOVE (struct file_lock*,int ) ;
 int NFS_GRANTED ;
 int nfslocklist ;

enum nfslock_status
delete_nfslock(struct file_lock *fl)
{

 LIST_REMOVE(fl, nfslocklist);

 return (NFS_GRANTED);
}
