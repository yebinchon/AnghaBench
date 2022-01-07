
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

 (void)fprintf(stderr,
     "usage: jail [-dhilqv] [-J jid_file] [-u username] [-U username]\n"
     "            -[cmr] param=value ... [command=command ...]\n"
     "       jail [-dqv] [-f file] [-e separator] -[cmr] [jail]\n"
     "       jail [-qv] [-f file] -[rR] ['*' | jail ...]\n"
     "       jail [-dhilqv] [-J jid_file] [-u username] [-U username]\n"
     "            [-n jailname] [-s securelevel]\n"
     "            path hostname [ip[,...]] command ...\n");
 exit(1);
}
