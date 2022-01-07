
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SDPD ;
 char* SDP_LOCAL_PATH ;
 int exit (int) ;
 int fprintf (int ,char*,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"Usage: %s [options]\n" "Where options are:\n" "	-c	specify control socket name (default %s)\n" "	-d	do not detach (run in foreground)\n" "	-g grp	specify group\n" "	-h	display usage and exit\n" "	-u usr	specify user\n",






  SDPD, SDP_LOCAL_PATH);
 exit(255);
}
