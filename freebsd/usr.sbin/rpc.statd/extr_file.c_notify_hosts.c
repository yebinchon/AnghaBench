
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_4__ {int noOfHosts; TYPE_1__* hosts; } ;
struct TYPE_3__ {int notifyReqd; int hostname; } ;
typedef TYPE_1__ HostInfo ;


 void* FALSE ;
 int LOG_ERR ;
 int TRUE ;
 int errno ;
 int exit (int ) ;
 int fork () ;
 scalar_t__ notify_one_host (int ,int) ;
 int sleep (int) ;
 TYPE_2__* status_info ;
 int strerror (int ) ;
 int sync_file () ;
 int syslog (int ,char*,int ) ;

void notify_hosts(void)
{
  int i;
  int attempts;
  int work_to_do = FALSE;
  HostInfo *hp;
  pid_t pid;


  for (i = status_info->noOfHosts, hp = status_info->hosts; i ; i--, hp++)
  {
    if (hp->notifyReqd)
    {
      work_to_do = TRUE;
      break;
    }
  }

  if (!work_to_do) return;

  pid = fork();
  if (pid == -1)
  {
    syslog(LOG_ERR, "Unable to fork notify process - %s", strerror(errno));
    return;
  }
  if (pid) return;
  for (attempts = 0; attempts < 44; attempts++)
  {
    work_to_do = FALSE;
    for (i = status_info->noOfHosts, hp = status_info->hosts; i ; i--, hp++)
    {
      if (hp->notifyReqd)
      {
        if (notify_one_host(hp->hostname, attempts == 0))
 {
   hp->notifyReqd = FALSE;
          sync_file();
 }
 else work_to_do = TRUE;
      }
    }
    if (!work_to_do) break;
    if (attempts < 10) sleep(5);
    else if (attempts < 20) sleep(60);
    else sleep(60*60);
  }
  exit(0);
}
