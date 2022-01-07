
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int client_name; } ;


 struct file_lock* LIST_FIRST (int *) ;
 struct file_lock* LIST_NEXT (struct file_lock*,int ) ;
 int SM_MAXSTRLEN ;
 int blockedlocklist_head ;
 int deallocate_file_lock (struct file_lock*) ;
 int nfslocklist ;
 int remove_blockingfilelock (struct file_lock*) ;
 scalar_t__ strncmp (char const*,int ,int ) ;

void
clear_blockingfilelock(const char *hostname)
{
 struct file_lock *ifl,*nfl;
 ifl = LIST_FIRST(&blockedlocklist_head);

 while (ifl != ((void*)0)) {
  nfl = LIST_NEXT(ifl, nfslocklist);

  if (strncmp(hostname, ifl->client_name, SM_MAXSTRLEN) == 0) {
   remove_blockingfilelock(ifl);
   deallocate_file_lock(ifl);
  }

  ifl = nfl;
 }
}
