
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct apm_event_info {size_t type; int index; } ;
struct TYPE_3__ {int name; } ;


 int APMIO_NEXTEVENT ;
 int LOG_INFO ;
 int LOG_NOTICE ;
 TYPE_1__* events ;
 int exec_event_cmd (TYPE_1__*) ;
 int exit (int) ;
 scalar_t__ fork () ;
 scalar_t__ ioctl (int,int ,struct apm_event_info*) ;
 int syslog (int ,char*,size_t,...) ;

void
proc_apmevent(int fd)
{
 struct apm_event_info apmevent;

 while (ioctl(fd, APMIO_NEXTEVENT, &apmevent) == 0) {
  int status;
  syslog(LOG_NOTICE, "apmevent %04x index %d\n",
   apmevent.type, apmevent.index);
  syslog(LOG_INFO, "apm event: %s", events[apmevent.type].name);
  if (fork() == 0) {
   status = exec_event_cmd(&events[apmevent.type]);
   exit(status);
  }
 }
}
