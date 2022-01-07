
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

void
usage(void)
{

 fprintf(stderr,
"usage: traceroute6 [-adIlnNrSTUv] [-A as_server] [-f firsthop] [-g gateway]\n"
"       [-m hoplimit] [-p port] [-q probes] [-s src] [-w waittime] target\n"
"       [datalen]\n");
 exit(1);
}
