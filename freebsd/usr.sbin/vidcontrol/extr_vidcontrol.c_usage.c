
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*,char*,char*,char*) ;
 int stderr ;
 scalar_t__ vt4_mode ;

__attribute__((used)) static void
usage(void)
{
 if (vt4_mode)
  fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n%s\n",
"usage: vidcontrol [-CHPpx] [-b color] [-c appearance] [-f [[size] file]]",
"                  [-g geometry] [-h size] [-i active | adapter | mode]",
"                  [-M char] [-m on | off]",
"                  [-r foreground background] [-S on | off] [-s number]",
"                  [-T xterm | cons25] [-t N | off] [mode]",
"                  [foreground [background]] [show]");
 else
  fprintf(stderr, "%s\n%s\n%s\n%s\n%s\n%s\n",
"usage: vidcontrol [-CdHLPpx] [-b color] [-c appearance] [-E emulator]",
"                  [-f [[size] file]] [-g geometry] [-h size]",
"                  [-i active | adapter | mode] [-l screen_map] [-M char]",
"                  [-m on | off] [-r foreground background] [-S on | off]",
"                  [-s number] [-T xterm | cons25] [-t N | off] [mode]",
"                  [foreground [background]] [show]");
 exit(1);
}
