
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trussinfo {int outfile; struct threadinfo* curthread; } ;
struct threadinfo {scalar_t__ tid; int after; int before; } ;


 int CLOCK_REALTIME ;
 int clock_gettime (int ,int *) ;
 int fprintf (int ,char*,long) ;
 int print_line_prefix (struct trussinfo*) ;

__attribute__((used)) static void
report_thread_birth(struct trussinfo *info)
{
 struct threadinfo *t;

 t = info->curthread;
 clock_gettime(CLOCK_REALTIME, &t->after);
 t->before = t->after;
 print_line_prefix(info);
 fprintf(info->outfile, "<new thread %ld>\n", (long)t->tid);
}
