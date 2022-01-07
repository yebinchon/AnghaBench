
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
  "usage: syslogd [-468ACcdFHknosTuv] [-a allowed_peer]\n"
  "               [-b bind_address] [-f config_file]\n"
  "               [-l [mode:]path] [-m mark_interval]\n"
  "               [-O format] [-P pid_file] [-p log_socket]\n"
  "               [-S logpriv_socket]\n");
 exit(1);
}
