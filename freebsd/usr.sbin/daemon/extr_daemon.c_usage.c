
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
     "usage: daemon [-cfrS] [-p child_pidfile] [-P supervisor_pidfile]\n"
     "              [-u user] [-o output_file] [-t title]\n"
     "              [-l syslog_facility] [-s syslog_priority]\n"
     "              [-T syslog_tag] [-m output_mask] [-R restart_delay_secs]\n"
     "command arguments ...\n");
 exit(1);
}
