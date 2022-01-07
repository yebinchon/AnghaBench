
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_cmd_exec {char* line; } ;
typedef int FILE ;


 int fprintf (int *,char*,char*) ;

void
event_cmd_exec_dump(void *this, FILE *fp)
{
 fprintf(fp, " \"%s\"", ((struct event_cmd_exec *)this)->line);
}
