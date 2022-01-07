
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* emu10k1_adcspeed ;

__attribute__((used)) static int
emu_k1_recval(int speed)
{
 int val;

 val = 0;
 while ((val < 7) && (speed < emu10k1_adcspeed[val]))
  val++;
 return (val);
}
