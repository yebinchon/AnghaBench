
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int printf (char*,...) ;

__attribute__((used)) static void
print_xferstats(u_int packets, int packetlen, double xfertime)
{
 int datalen;
 double pps;
 double bps;

 datalen = packets * packetlen;
 pps = packets / xfertime;
 bps = datalen / xfertime;

 printf("\t%.0f packets/sec, ", pps);

 if (bps >= 1024)
  printf ("%.1fK ", bps / 1024);
 else
  printf ("%.0f ", bps);

 printf("bytes/sec\n");
}
