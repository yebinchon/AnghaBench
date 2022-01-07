
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; char* param; char* desc; } ;
typedef int FILE ;


 int EXIT_FAILURE ;
 TYPE_1__* cmds ;
 int exit (int ) ;
 int fprintf (int *,char*,...) ;
 char* getprogname () ;
 int nbcmds ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void
usage(FILE *out, const char *subcmd)
{
 int i;

 if (subcmd == ((void*)0)) {
  fprintf(out, "Usage: %s [-u /dev/ses<N>] <command> [options]\n",
      getprogname());
  fprintf(out, "Commands supported:\n");
 }
 for (i = 0; i < nbcmds; i++) {
  if (subcmd != ((void*)0)) {
   if (strcmp(subcmd, cmds[i].name) == 0) {
    fprintf(out, "Usage: %s %s [-u /dev/ses<N>] "
        "%s\n\t%s\n", getprogname(), subcmd,
        cmds[i].param, cmds[i].desc);
    break;
   }
   continue;
  }
  fprintf(out, "    %-12s%s\n\t\t%s\n\n", cmds[i].name,
      cmds[i].param, cmds[i].desc);
 }

 exit(EXIT_FAILURE);
}
