
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* audigy_adcspeed ;

__attribute__((used)) static int
audigy_recval(int speed) {
 int val;

 val = 0;
 while (val < 8 && speed < audigy_adcspeed[val])
  val++;
 return val;
}
