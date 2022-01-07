
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint ;


 int printf (char*,int,...) ;

__attribute__((used)) static void
print_time_humanized(uint seconds)
{

 if (seconds > 3600) {
  printf("%u:", seconds / 3600);
 }
 if (seconds > 60) {
  seconds %= 3600;
  printf("%02u:%02u", seconds / 60, seconds % 60);
 } else {
  printf("%us", seconds);
 }
}
