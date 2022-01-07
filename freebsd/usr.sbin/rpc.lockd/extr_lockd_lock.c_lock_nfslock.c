
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;
typedef enum nfslock_status { ____Placeholder_nfslock_status } nfslock_status ;


 int LIST_INSERT_HEAD (int *,struct file_lock*,int ) ;
 int NFS_GRANTED ;
 int NFS_GRANTED_DUPLICATE ;
 int debuglog (char*) ;
 int dump_filelock (struct file_lock*) ;
 int nfslocklist ;
 int nfslocklist_head ;
 int test_nfslock (struct file_lock*,struct file_lock**) ;

enum nfslock_status
lock_nfslock(struct file_lock *fl)
{
 enum nfslock_status retval;
 struct file_lock *dummy_fl;

 dummy_fl = ((void*)0);

 debuglog("Entering lock_nfslock...\n");

 retval = test_nfslock(fl,&dummy_fl);

 if (retval == NFS_GRANTED || retval == NFS_GRANTED_DUPLICATE) {
  debuglog("Inserting lock...\n");
  dump_filelock(fl);
  LIST_INSERT_HEAD(&nfslocklist_head, fl, nfslocklist);
 }

 debuglog("Exiting lock_nfslock...\n");

 return (retval);
}
