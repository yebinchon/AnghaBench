
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
typedef int u_int ;
struct TYPE_6__ {double sec; double usec; } ;
struct TYPE_7__ {int counter; TYPE_1__ clock; } ;
typedef TYPE_2__ spraycumul ;
struct TYPE_8__ {int sprayarr_len; int sprayarr_val; } ;
typedef TYPE_3__ sprayarr ;
typedef int CLIENT ;


 int CLSET_TIMEOUT ;
 int NO_DEFAULT ;
 int ONE_WAY ;
 scalar_t__ RPC_SUCCESS ;
 int SPRAYMAX ;
 int SPRAYOVERHEAD ;
 int SPRAYPROC_CLEAR ;
 int SPRAYPROC_GET ;
 int SPRAYPROC_SPRAY ;
 int SPRAYPROG ;
 int SPRAYVERS ;
 int TIMEOUT ;
 int atoi (int ) ;
 scalar_t__ clnt_call (int *,int ,int ,TYPE_3__*,int ,TYPE_2__*,int ) ;
 int clnt_control (int *,int ,int *) ;
 int * clnt_create (char*,int ,int ,char*) ;
 int clnt_spcreateerror (char*) ;
 int clnt_sperror (int *,char*) ;
 int errx (int,char*,int ) ;
 int exit (int ) ;
 int fflush (int ) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 scalar_t__ optind ;
 int print_xferstats (int,int,double) ;
 int printf (char*,...) ;
 int spray_buffer ;
 int stdout ;
 int usage () ;
 int usleep (int) ;
 scalar_t__ xdr_sprayarr ;
 scalar_t__ xdr_spraycumul ;
 scalar_t__ xdr_void ;

int
main(int argc, char *argv[])
{
 spraycumul host_stats;
 sprayarr host_array;
 CLIENT *cl;
 int c;
 u_int i;
 u_int count = 0;
 int delay = 0;
 int length = 0;
 double xmit_time;

 while ((c = getopt(argc, argv, "c:d:l:")) != -1) {
  switch (c) {
  case 'c':
   count = atoi(optarg);
   break;
  case 'd':
   delay = atoi(optarg);
   break;
  case 'l':
   length = atoi(optarg);
   break;
  default:
   usage();

  }
 }
 argc -= optind;
 argv += optind;

 if (argc != 1) {
  usage();

 }



 if (length > SPRAYMAX) {
  length = SPRAYMAX;
 } else if (length < SPRAYOVERHEAD) {
  length = SPRAYOVERHEAD;
 } else {

  length -= SPRAYOVERHEAD - 3;
  length &= ~3;
  length += SPRAYOVERHEAD;
 }






 if (!count) {
  count = 100000 / length;
 }


 host_array.sprayarr_len = length - SPRAYOVERHEAD;
 host_array.sprayarr_val = spray_buffer;



 cl = clnt_create(*argv, SPRAYPROG, SPRAYVERS, "udp");
 if (cl == ((void*)0))
  errx(1, "%s", clnt_spcreateerror(""));
 clnt_control(cl, CLSET_TIMEOUT, &NO_DEFAULT);



 if (clnt_call(cl, SPRAYPROC_CLEAR, (xdrproc_t)xdr_void, ((void*)0),
  (xdrproc_t)xdr_void, ((void*)0), TIMEOUT) != RPC_SUCCESS)
  errx(1, "%s", clnt_sperror(cl, ""));



 printf ("sending %u packets of length %d to %s ...", count, length,
     *argv);
 fflush (stdout);

 for (i = 0; i < count; i++) {
  clnt_call(cl, SPRAYPROC_SPRAY, (xdrproc_t)xdr_sprayarr,
      &host_array, (xdrproc_t)xdr_void, ((void*)0), ONE_WAY);

  if (delay) {
   usleep(delay);
  }
 }



 if (clnt_call(cl, SPRAYPROC_GET, (xdrproc_t)xdr_void, ((void*)0),
  (xdrproc_t)xdr_spraycumul, &host_stats, TIMEOUT) != RPC_SUCCESS)
  errx(1, "%s", clnt_sperror(cl, ""));

 xmit_time = host_stats.clock.sec +
   (host_stats.clock.usec / 1000000.0);

 printf ("\n\tin %.2f seconds elapsed time\n", xmit_time);



 if (host_stats.counter != count) {
  int packets_dropped = count - host_stats.counter;

  printf("\t%d packets (%.2f%%) dropped\n",
   packets_dropped,
   100.0 * packets_dropped / count );
 } else {
  printf("\tno packets dropped\n");
 }

 printf("Sent:");
 print_xferstats(count, length, xmit_time);

 printf("Rcvd:");
 print_xferstats(host_stats.counter, length, xmit_time);

 exit (0);
}
