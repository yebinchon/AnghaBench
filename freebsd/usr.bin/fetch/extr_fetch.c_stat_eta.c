
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {long tv_sec; } ;
struct TYPE_3__ {long tv_sec; } ;
struct xferstat {double rcvd; double offset; double size; TYPE_2__ start; TYPE_1__ last; } ;
typedef double off_t ;


 int stat_seconds (char*,size_t,long) ;

__attribute__((used)) static void
stat_eta(char *str, size_t strsz, const struct xferstat *xs)
{
 long elapsed, eta;
 off_t received, expected;

 elapsed = xs->last.tv_sec - xs->start.tv_sec;
 received = xs->rcvd - xs->offset;
 expected = xs->size - xs->rcvd;
 eta = (long)((double)elapsed * expected / received);
 if (eta > 0)
  stat_seconds(str, strsz, eta);
 else
  stat_seconds(str, strsz, elapsed);
}
