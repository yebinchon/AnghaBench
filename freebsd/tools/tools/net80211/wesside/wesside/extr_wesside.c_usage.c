
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int ) ;
 int printf (char*,...) ;

void usage(char* pname) {
 printf("Usage: %s <opts>\n", pname);
 printf("-h\t\tthis lame message\n");
 printf("-i\t\t<iface>\n");
 printf("-s\t\t<flood server ip>\n");
 printf("-m\t\t<my ip>\n");
 printf("-n\t\t<net ip>\n");
 printf("-r\t\t<rtr mac>\n");
 printf("-a\t\t<mymac>\n");
 printf("-c\t\tdo not crack\n");
 printf("-p\t\t<min prga>\n");
 printf("-4\t\t64 bit key\n");
 printf("-v\t\tvictim mac\n");
 printf("-t\t\t<crack thresh>\n");
 printf("-f\t\t<max chan>\n");
 exit(0);
}
