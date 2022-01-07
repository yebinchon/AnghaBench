
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xferstat {int rcvd; int last; } ;


 int fprintf (int ,char*,char*,char*,char*) ;
 int gettimeofday (int *,int *) ;
 int putc (char,int ) ;
 int stat_bps (char*,int,struct xferstat*) ;
 int stat_bytes (char*,int,int ) ;
 int stat_display (struct xferstat*,int) ;
 int stat_eta (char*,int,struct xferstat*) ;
 int stderr ;
 scalar_t__ v_level ;
 scalar_t__ v_progress ;

__attribute__((used)) static void
stat_end(struct xferstat *xs)
{
 char bytes[16], bps[16], eta[16];

 gettimeofday(&xs->last, ((void*)0));
 if (v_progress) {
  stat_display(xs, 2);
  putc('\n', stderr);
 } else if (v_level > 0) {
  stat_bytes(bytes, sizeof bytes, xs->rcvd);
  stat_bps(bps, sizeof bps, xs);
  stat_eta(eta, sizeof eta, xs);
  fprintf(stderr, "        %s %s %s\n", bytes, bps, eta);
 }
}
