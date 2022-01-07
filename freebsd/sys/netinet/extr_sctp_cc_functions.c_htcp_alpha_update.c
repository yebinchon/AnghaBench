
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct htcp {int minRTT; int alpha; int beta; } ;


 int ALPHA_BASE ;
 int htcp_cong_time (struct htcp*) ;
 int hz ;
 int max (int,unsigned int) ;
 int min (int ,unsigned int) ;
 scalar_t__ use_rtt_scaling ;

__attribute__((used)) static inline void
htcp_alpha_update(struct htcp *ca)
{
 uint32_t minRTT = ca->minRTT;
 uint32_t factor = 1;
 uint32_t diff = htcp_cong_time(ca);

 if (diff > (uint32_t)hz) {
  diff -= hz;
  factor = 1 + (10 * diff + ((diff / 2) * (diff / 2) / hz)) / hz;
 }

 if (use_rtt_scaling && minRTT) {
  uint32_t scale = (hz << 3) / (10 * minRTT);

  scale = min(max(scale, 1U << 2), 10U << 3);

  factor = (factor << 3) / scale;
  if (!factor)
   factor = 1;
 }

 ca->alpha = 2 * factor * ((1 << 7) - ca->beta);
 if (!ca->alpha)
  ca->alpha = ALPHA_BASE;
}
