
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sched_param {int dummy; } ;


 scalar_t__ errno ;
 int exit (int) ;
 int fprintf (int ,char*,int,char*,char*) ;
 int quit (char*) ;
 scalar_t__ sched_getparam (int ,struct sched_param*) ;
 int sched_getscheduler (int ) ;
 char* sched_text (int) ;
 int stderr ;

int sched_is(int line, struct sched_param *p, int shouldbe)
{
 int scheduler;
 struct sched_param param;



 errno = 0;
 scheduler = sched_getscheduler(0);
 if (sched_getparam(0, &param))
  quit("sched_getparam");

 if (p)
  *p = param;

 if (shouldbe != -1 && scheduler != shouldbe)
 {
  fprintf(stderr,
  "At line %d the scheduler should be %s yet it is %s.\n",
  line, sched_text(shouldbe), sched_text(scheduler));

  exit(-1);
 }

 return scheduler;
}
