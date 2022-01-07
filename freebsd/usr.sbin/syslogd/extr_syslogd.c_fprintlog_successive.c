
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filed {int f_prevcount; } ;
typedef int msg ;


 int LocalHostName ;
 int assert (int) ;
 int fprintlog_first (struct filed*,int ,char*,int *,int *,int *,char*,int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static void
fprintlog_successive(struct filed *f, int flags)
{
 char msg[100];

 assert(f->f_prevcount > 0);
 snprintf(msg, sizeof(msg), "last message repeated %d times",
     f->f_prevcount);
 fprintlog_first(f, LocalHostName, "syslogd", ((void*)0), ((void*)0), ((void*)0), msg,
     flags);
}
