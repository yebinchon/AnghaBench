
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
bus_speed_ok(int bus)
{

 switch (bus) {
 case 100:
 case 133:
 case 333:
  return (1);
 default:
  return (0);
 }
}
