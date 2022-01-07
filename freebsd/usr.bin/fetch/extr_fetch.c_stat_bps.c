
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {double tv_usec; scalar_t__ tv_sec; } ;
struct xferstat {double rcvd; double lastrcvd; TYPE_1__ last2; TYPE_2__ last; } ;
typedef int off_t ;


 int snprintf (char*,size_t,char*,...) ;
 int stat_bytes (char*,int,int ) ;

__attribute__((used)) static void
stat_bps(char *str, size_t strsz, struct xferstat *xs)
{
 char bytes[16];
 double delta, bps;

 delta = ((double)xs->last.tv_sec + (xs->last.tv_usec / 1.e6))
     - ((double)xs->last2.tv_sec + (xs->last2.tv_usec / 1.e6));

 if (delta == 0.0) {
  snprintf(str, strsz, "?? Bps");
 } else {
  bps = (xs->rcvd - xs->lastrcvd) / delta;
  stat_bytes(bytes, sizeof bytes, (off_t)bps);
  snprintf(str, strsz, "%sps", bytes);
 }
}
