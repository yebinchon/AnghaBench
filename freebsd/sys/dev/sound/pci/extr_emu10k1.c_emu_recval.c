
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* adcspeed ;

__attribute__((used)) static int
emu_recval(int speed) {
 int val;

 val = 0;
 while (val < 7 && speed < adcspeed[val])
  val++;
 return val;
}
