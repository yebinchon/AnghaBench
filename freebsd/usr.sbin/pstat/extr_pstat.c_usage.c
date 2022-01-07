
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 char* usagestr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "usage: %s\n", usagestr);
 exit (1);
}
