
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_USAGE ;
 char* FMT ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{


 fprintf(stderr, "usage: usbdump [options]\n");
 fprintf(stderr, "    %-14s %s\n", "-i <usbusX>", "Listen on USB bus interface");
 fprintf(stderr, "    %-14s %s\n", "-f <unit[.endpoint]>", "Specify a device and endpoint filter");
 fprintf(stderr, "    %-14s %s\n", "-r <file>", "Read the raw packets from file");
 fprintf(stderr, "    %-14s %s\n", "-s <snaplen>", "Snapshot bytes from each packet");
 fprintf(stderr, "    %-14s %s\n", "-v", "Increase the verbose level");
 fprintf(stderr, "    %-14s %s\n", "-b <file>", "Save raw version of all recorded data to file");
 fprintf(stderr, "    %-14s %s\n", "-w <file>", "Write the raw packets to file");
 fprintf(stderr, "    %-14s %s\n", "-h", "Display summary of command line options");

 exit(EX_USAGE);
}
