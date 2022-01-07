
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_config {scalar_t__ rejectable; int cmdlist; } ;


 int LOG_ERR ;
 int event_cmd_reject_act (int *) ;
 int exec_run_cmd (int ) ;
 int syslog (int ,char*) ;

int
exec_event_cmd(struct event_config *ev)
{
 int status = 0;

 status = exec_run_cmd(ev->cmdlist);
 if (status && ev->rejectable) {
  syslog(LOG_ERR, "canceled");
  event_cmd_reject_act(((void*)0));
 }
 return status;
}
