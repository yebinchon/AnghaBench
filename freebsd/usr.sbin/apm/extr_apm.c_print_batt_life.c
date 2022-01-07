
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int APM_UNKNOWN ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_batt_life(u_int batt_life)
{
 printf("Remaining battery life: ");
 if (batt_life == APM_UNKNOWN)
  printf("unknown\n");
 else if (batt_life <= 100)
  printf("%d%%\n", batt_life);
 else
  printf("invalid value (0x%x)\n", batt_life);
}
