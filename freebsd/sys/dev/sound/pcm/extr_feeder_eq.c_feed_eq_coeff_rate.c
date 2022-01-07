
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct feed_eq_coeff {int dummy; } ;
struct TYPE_2__ {scalar_t__ rate; struct feed_eq_coeff* coeff; } ;


 scalar_t__ FEEDEQ_RATE_MAX ;
 scalar_t__ FEEDEQ_RATE_MIN ;
 int FEEDEQ_TAB_SIZE ;
 TYPE_1__* feed_eq_tab ;
 scalar_t__ feeder_eq_exact_rate ;

__attribute__((used)) static struct feed_eq_coeff *
feed_eq_coeff_rate(uint32_t rate)
{
 uint32_t spd, threshold;
 int i;

 if (rate < FEEDEQ_RATE_MIN || rate > FEEDEQ_RATE_MAX)
  return (((void*)0));





 for (i = 0; i < FEEDEQ_TAB_SIZE; i++) {
  spd = feed_eq_tab[i].rate;
  threshold = spd + ((i < (FEEDEQ_TAB_SIZE - 1) &&
      feed_eq_tab[i + 1].rate > spd) ?
      ((feed_eq_tab[i + 1].rate - spd) >> 1) : 0);
  if (rate == spd ||
      (feeder_eq_exact_rate == 0 && rate <= threshold))
   return (feed_eq_tab[i].coeff);
 }

 return (((void*)0));
}
