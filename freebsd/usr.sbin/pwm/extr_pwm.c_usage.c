
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "Usage:\n");
 fprintf(stderr, "\tpwm [-f dev] -C\n");
 fprintf(stderr, "\tpwm [-f dev] [-D | -E] [-p period] [-d duty[%%]]\n");
 exit(1);
}
