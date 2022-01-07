
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
    fprintf(stderr,
      "Usage: chat [-esSvV] [-f chat-file] [-r report-file] [-t timeout]\n"
      "            [-T phone-number] [-U phone-number2] [chat-script]\n"
      "where chat-script has the form:\n"
      "            [...[[expect[-send[-expect...]] send expect[-send[-expect]] ...]]]\n");
    exit(1);
}
