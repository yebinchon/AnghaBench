
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "%s\n%s\n%s\n",
"usage: kbdcontrol [-dFKix] [-A name] [-a name] [-b duration.pitch | [quiet.]belltype]",
"                  [-r delay.repeat | speed] [-l mapfile] [-f # string]",
"                  [-k device] [-L mapfile] [-P path]");
 exit(1);
}
