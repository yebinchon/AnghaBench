
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* emu10k2_adcspeed ;

__attribute__((used)) static int
emu_k2_recval(int speed)
{
 int val;

 val = 0;
 while ((val < 8) && (speed < emu10k2_adcspeed[val]))
  val++;
 return (val);
}
