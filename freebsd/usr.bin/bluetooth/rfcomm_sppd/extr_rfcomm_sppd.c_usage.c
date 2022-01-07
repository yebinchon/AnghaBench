
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* SPPD_IDENT ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stdout ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stdout,
"Usage: %s options\n" "Where options are:\n" "\t-a address Peer address (required in client mode)\n" "\t-b         Run in background\n" "\t-c channel RFCOMM channel to connect to or listen on\n" "\t-t         use slave pseudo tty (required in background mode)\n" "\t-S         Server mode\n" "\t-h         Display this message\n", SPPD_IDENT);







 exit(255);
}
