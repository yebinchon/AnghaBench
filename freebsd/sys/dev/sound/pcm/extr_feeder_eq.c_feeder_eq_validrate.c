
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int * feed_eq_coeff_rate (int ) ;

int
feeder_eq_validrate(uint32_t rate)
{

 if (feed_eq_coeff_rate(rate) != ((void*)0))
  return (1);

 return (0);
}
