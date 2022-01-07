
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* RFCOMM_PPPD ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 int stdout ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stdout,
"Usage: %s options\n" "Where options are:\n" "\t-a address   Address to listen on or connect to (required for client)\n" "\t-c           Act as a clinet (default)\n" "\t-C channel   RFCOMM channel to listen on or connect to (required)\n" "\t-d           Run in foreground\n" "\t-D           Register Dial-Up Networking service (server mode only)\n" "\t-l label     Use PPP label (required)\n" "\t-s           Act as a server\n" "\t-S           Register Serial Port service (server mode only)\n" "\t-u N         Tell PPP to operate on /dev/tunN (client mode only)\n" "\t-h           Display this message\n", RFCOMM_PPPD);
 exit(255);
}
