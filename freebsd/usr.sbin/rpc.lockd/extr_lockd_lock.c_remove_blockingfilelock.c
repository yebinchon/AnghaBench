
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;


 int LIST_REMOVE (struct file_lock*,int ) ;
 int debuglog (char*) ;
 int nfslocklist ;

void
remove_blockingfilelock(struct file_lock *fl)
{

 debuglog("Entering remove_blockingfilelock\n");

 LIST_REMOVE(fl, nfslocklist);

 debuglog("Exiting remove_blockingfilelock\n");
}
