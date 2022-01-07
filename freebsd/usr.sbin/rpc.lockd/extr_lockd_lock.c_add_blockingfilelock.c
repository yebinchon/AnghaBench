
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {scalar_t__ blocking; } ;


 int LIST_INSERT_HEAD (int *,struct file_lock*,int ) ;
 int blockedlocklist_head ;
 int debuglog (char*) ;
 scalar_t__ duplicate_block (struct file_lock*) ;
 int nfslocklist ;

void
add_blockingfilelock(struct file_lock *fl)
{
 debuglog("Entering add_blockingfilelock\n");
 if (duplicate_block(fl)) {
  debuglog("Exiting add_blockingfilelock: already blocked\n");
  return;
 }






 fl->blocking = 0;
 LIST_INSERT_HEAD(&blockedlocklist_head, fl, nfslocklist);

 debuglog("Exiting add_blockingfilelock: added blocked lock\n");
}
