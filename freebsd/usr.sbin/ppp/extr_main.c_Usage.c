
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_START ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
Usage(void)
{
  fprintf(stderr, "usage: ppp [-auto | -foreground | -background | -direct |"
          " -dedicated | -ddial | -interactive]"

          " [-nat]"

          " [-quiet] [-unit N] [system ...]\n");
  exit(EX_START);
}
