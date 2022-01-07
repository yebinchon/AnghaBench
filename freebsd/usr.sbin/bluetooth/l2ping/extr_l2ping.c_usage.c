
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int NG_L2CAP_MAX_ECHO_SIZE ;
 int exit (int) ;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(void)
{
 fprintf(stderr, "Usage: l2ping [-fhn] -a remote " "[-c count] [-i wait] [-S source] [-s size]\n");

 fprintf(stderr, "Where:\n");
 fprintf(stderr, "  -a remote  Specify remote device to ping\n");
 fprintf(stderr, "  -c count   Number of packets to send\n");
 fprintf(stderr, "  -f         No delay between packets\n");
 fprintf(stderr, "  -h         Display this message\n");
 fprintf(stderr, "  -i wait    Delay between packets (sec)\n");
 fprintf(stderr, "  -n         Numeric output only\n");
 fprintf(stderr, "  -S source  Specify source device\n");
 fprintf(stderr, "  -s size    Packet size (bytes), " "between %zd and %zd\n", sizeof(int32_t), NG_L2CAP_MAX_ECHO_SIZE);


 exit(255);
}
