
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
print_batt_time(int batt_time)
{
 printf("Remaining battery time: ");
 if (batt_time == -1)
  printf("unknown\n");
 else {
  int h, m, s;

  h = batt_time;
  s = h % 60;
  h /= 60;
  m = h % 60;
  h /= 60;
  printf("%2d:%02d:%02d\n", h, m, s);
 }
}
