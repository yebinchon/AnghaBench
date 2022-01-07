
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr,
      "usage: dconschat [-brvwRT1] [-h hz] [-C port] [-G port]\n"
     "\t\t\t[-M core] [-N system]\n"
     "\t\t\t[-u unit] [-a address] [-t target_eui64]\n"
     "\t-b	translate ctrl-C to CR+~+ctrl-B on gdb port\n"
     "\t-v	verbose\n"
     "\t-w	listen on wildcard address rather than localhost\n"
     "\t-r	replay old buffer on connection\n"
     "\t-R	read-only\n"
     "\t-T	enable Telnet protocol workaround on console port\n"
     "\t-1	one shot: read buffer and exit\n"
     "\t-h	polling rate\n"
     "\t-C	port number for console port\n"
     "\t-G	port number for gdb port\n"
     "\t(for KVM)\n"
     "\t-M	core file\n"
     "\t-N	system file\n"
     "\t(for FireWire)\n"
     "\t-u	specify unit number of the bus\n"
     "\t-t	EUI64 of target host (must be specified)\n"
     "\t-a	physical address of dcons buffer on target host\n"
 );
 exit(0);
}
