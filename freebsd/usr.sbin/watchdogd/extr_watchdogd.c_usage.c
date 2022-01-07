
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 scalar_t__ is_daemon ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 if (is_daemon)
  fprintf(stderr, "usage:\n"
"  watchdogd [-dnSw] [-e cmd] [-I pidfile] [-s sleep] [-t timeout]\n"
"            [-T script_timeout] [-x exit_timeout]\n"
"            [--debug]\n"
"            [--pretimeout seconds] [-pretimeout-action action]\n"
"            [--softtimeout] [-softtimeout-action action]\n"
);
 else
  fprintf(stderr, "usage: watchdog [-d] [-t timeout]\n");
 exit(EX_USAGE);
}
