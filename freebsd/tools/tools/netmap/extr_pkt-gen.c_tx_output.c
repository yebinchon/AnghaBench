
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_ctrs {int pkts; int bytes; scalar_t__ events; } ;
struct glob_arg {double framing; } ;


 char* norm (char*,double,int ) ;
 int normalize ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void
tx_output(struct glob_arg *g, struct my_ctrs *cur, double delta, const char *msg)
{
 double bw, raw_bw, pps, abs;
 char b1[40], b2[80], b3[80];
 int size;

 if (cur->pkts == 0) {
  printf("%s nothing.\n", msg);
  return;
 }

 size = (int)(cur->bytes / cur->pkts);

 printf("%s %llu packets %llu bytes %llu events %d bytes each in %.2f seconds.\n",
  msg,
  (unsigned long long)cur->pkts,
  (unsigned long long)cur->bytes,
  (unsigned long long)cur->events, size, delta);
 if (delta == 0)
  delta = 1e-6;
 if (size < 60)
  size = 60;
 pps = cur->pkts / delta;
 bw = (8.0 * cur->bytes) / delta;
 raw_bw = (8.0 * cur->bytes + cur->pkts * g->framing) / delta;
 abs = cur->pkts / (double)(cur->events);

 printf("Speed: %spps Bandwidth: %sbps (raw %sbps). Average batch: %.2f pkts\n",
  norm(b1, pps, normalize), norm(b2, bw, normalize), norm(b3, raw_bw, normalize), abs);
}
