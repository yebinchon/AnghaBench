
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct tcp_bbr {int dummy; } ;



__attribute__((used)) static uint16_t
bbr_gain_adjust(struct tcp_bbr *bbr, uint16_t gain)
{
 if (gain < 1)
  gain = 1;
 return (gain);
}
