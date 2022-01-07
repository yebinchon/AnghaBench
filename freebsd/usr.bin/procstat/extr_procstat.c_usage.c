
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cmd; int cmp; int * usage; int command; } ;


 int EX_USAGE ;
 int PS_CMP_PLURAL ;
 TYPE_1__* cmd_table ;
 int exit (int ) ;
 size_t nitems (TYPE_1__*) ;
 int xo_error (char*,...) ;
 int xo_finish () ;

__attribute__((used)) static void
usage(void)
{
 size_t i, l;
 int multi;

 xo_error("usage: procstat [--libxo] [-h] [-M core] [-N system]"
     " [-w interval] command\n"
     "                [pid ... | core ...]\n"
     "       procstat [--libxo] -a [-h] [-M core] [-N system] "
     " [-w interval] command\n"
     "       procstat [--libxo] [-h] [-M core] [-N system]"
     " [-w interval]\n"
     "                [-S | -b | -c | -e | -f [-C] | -i [-n] | "
     "-j [-n] | -k [-k] |\n"
     "                 -l | -r [-H] | -s | -t | -v | -x] "
     "[pid ... | core ...]\n"
     "       procstat [--libxo] -a [-h] [-M core] [-N system]"
     " [-w interval]\n"
     "                [-S | -b | -c | -e | -f [-C] | -i [-n] | "
     "-j [-n] | -k [-k] |\n"
     "                 -l | -r [-H] | -s | -t | -v | -x]\n"
     "       procstat [--libxo] -L [-h] [-M core] [-N system] core ...\n"
     "Available commands:\n");
 for (i = 0, l = nitems(cmd_table); i < l; i++) {
  multi = i + 1 < l && cmd_table[i].cmd == cmd_table[i + 1].cmd;
  xo_error("       %s%s%s", multi ? "[" : "",
      cmd_table[i].command, (cmd_table[i].cmp & PS_CMP_PLURAL) ?
      "(s)" : "");
  for (; i + 1 < l && cmd_table[i].cmd == cmd_table[i + 1].cmd;
      i++)
   xo_error(" | %s%s", cmd_table[i + 1].command,
       (cmd_table[i].cmp & PS_CMP_PLURAL) ? "(s)" : "");
  if (multi)
   xo_error("]");
  if (cmd_table[i].usage != ((void*)0))
   xo_error(" %s", cmd_table[i].usage);
  xo_error("\n");
 }
 xo_finish();
 exit(EX_USAGE);
}
