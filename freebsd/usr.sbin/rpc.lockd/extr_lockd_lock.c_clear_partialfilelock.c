
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int client_name; } ;


 struct file_lock* LIST_FIRST (int *) ;
 struct file_lock* LIST_NEXT (struct file_lock*,int ) ;
 int SM_MAXSTRLEN ;
 int clear_blockingfilelock (char const*) ;
 int nfslocklist ;
 int nfslocklist_head ;
 scalar_t__ strncmp (char const*,int ,int ) ;
 int unlock_partialfilelock (struct file_lock*) ;

void
clear_partialfilelock(const char *hostname)
{
 struct file_lock *ifl, *nfl;


 clear_blockingfilelock(hostname);
 ifl = LIST_FIRST(&nfslocklist_head);

 while (ifl != ((void*)0)) {
  nfl = LIST_NEXT(ifl, nfslocklist);

  if (strncmp(hostname, ifl->client_name, SM_MAXSTRLEN) == 0) {

   unlock_partialfilelock(ifl);

  }
  ifl = nfl;
 }
}
