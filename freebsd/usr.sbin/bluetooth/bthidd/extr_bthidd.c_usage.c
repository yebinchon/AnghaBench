
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BTHIDD_IDENT ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"Usage: %s [options]\n" "Where options are:\n" "	-a address	specify address to listen on (default ANY)\n" "	-c file		specify config file name\n" "	-d		run in foreground\n" "	-H file		specify known HIDs file name\n" "	-h		display this message\n" "	-p file		specify PID file name\n" "	-t tval		specify client rescan interval (sec)\n" "	-u		enable evdev protocol support\n" "", BTHIDD_IDENT);
 exit(255);
}
