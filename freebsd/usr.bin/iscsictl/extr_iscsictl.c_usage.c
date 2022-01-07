
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

 fprintf(stderr, "usage: iscsictl -A -p portal -t target "
     "[-u user -s secret] [-w timeout] [-e on | off]\n");
 fprintf(stderr, "       iscsictl -A -d discovery-host "
     "[-u user -s secret] [-e on | off]\n");
 fprintf(stderr, "       iscsictl -A -a [-c path]\n");
 fprintf(stderr, "       iscsictl -A -n nickname [-c path]\n");
 fprintf(stderr, "       iscsictl -M -i session-id [-p portal] "
     "[-t target] [-u user] [-s secret] [-e on | off]\n");
 fprintf(stderr, "       iscsictl -M -i session-id -n nickname "
     "[-c path]\n");
 fprintf(stderr, "       iscsictl -R [-p portal] [-t target]\n");
 fprintf(stderr, "       iscsictl -R -a\n");
 fprintf(stderr, "       iscsictl -R -n nickname [-c path]\n");
 fprintf(stderr, "       iscsictl -L [-v] [-w timeout]\n");
 exit(1);
}
