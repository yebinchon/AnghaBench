
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
 fprintf(stderr,
  "netmap bridge program: forward packets between two "
   "network interfaces\n"
  "    usage(1): bridge [-v] [-i ifa] [-i ifb] [-b burst] "
   "[-w wait_time] [-L]\n"
  "    usage(2): bridge [-v] [-w wait_time] [-L] "
   "[ifa [ifb [burst]]]\n"
  "\n"
  "    ifa and ifb are specified using the nm_open() syntax.\n"
  "    When ifb is missing (or is equal to ifa), bridge will\n"
  "    forward between between ifa and the host stack if -L\n"
  "    is not specified, otherwise loopback traffic on ifa.\n"
  "\n"
  "    example: bridge -w 10 -i netmap:eth3 -i netmap:eth1\n"
  );
 exit(1);
}
