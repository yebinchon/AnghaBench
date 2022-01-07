
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

int
pager_output(const char *line)
{

 fprintf(stderr, "%s", line);
 return (0);
}
