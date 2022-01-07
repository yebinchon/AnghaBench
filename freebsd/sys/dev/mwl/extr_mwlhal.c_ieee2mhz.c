
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;



__attribute__((used)) static uint16_t
ieee2mhz(int chan)
{
 if (chan == 14)
  return 2484;
 if (chan < 14)
  return 2407 + chan*5;
 return 2512 + (chan-15)*20;
}
