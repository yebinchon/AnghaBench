
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ypxfrstat ;
struct jobs {unsigned long tid; int polled; int prognum; int server; int map; struct jobs* next; } ;


 scalar_t__ YPXFR_AGE ;
 scalar_t__ YPXFR_SUCC ;
 int svc_unregister (int ,int) ;
 int verbose ;
 int yp_error (char*,unsigned long,...) ;
 struct jobs* yppush_joblist ;
 int yppush_running_jobs ;
 unsigned long yppusherr_string (scalar_t__) ;
 unsigned long ypxfrerr_string (scalar_t__) ;

__attribute__((used)) static int
yppush_show_status(ypxfrstat status, unsigned long tid)
{
 struct jobs *job;

 job = yppush_joblist;

 while (job != ((void*)0)) {
  if (job->tid == tid)
   break;
  job = job->next;
 }

 if (job == ((void*)0)) {
  yp_error("warning: received callback with invalid transaction ID: %lu",
    tid);
  return (0);
 }

 if (job->polled) {
  yp_error("warning: received callback with duplicate transaction ID: %lu",
    tid);
  return (0);
 }

 if (verbose > 1) {
  yp_error("checking return status: transaction ID: %lu",
        job->tid);
 }

 if (status != YPXFR_SUCC || verbose) {
  yp_error("transfer of map %s to server %s %s",
    job->map, job->server, status == YPXFR_SUCC ?
    "succeeded" : "failed");
  yp_error("status returned by ypxfr: %s", status > YPXFR_AGE ?
   yppusherr_string(status) :
   ypxfrerr_string(status));
 }

 job->polled = 1;

 svc_unregister(job->prognum, 1);

 yppush_running_jobs--;
 return(0);
}
