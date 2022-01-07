
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SDP_LOCAL_PATH ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
"Usage: sdpcontrol options command\n" "Where options are:\n"

"	-a address	address to connect to\n" "	-c path		path to the control socket (default is %s)\n" "	-h		display usage and quit\n" "	-l		connect to the local SDP server via control socket\n" "	command		one of the supported commands\n", SDP_LOCAL_PATH);




 exit(255);
}
