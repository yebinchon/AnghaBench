
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int APM_UNKNOWN ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_batt_stat(u_int batt_stat)
{
 const char *batt_msg[] = { "high", "low", "critical", "charging" };

 printf("Battery Status: ");
 if (batt_stat == APM_UNKNOWN)
  printf("unknown\n");
 else if (batt_stat > 3)
  printf("invalid value (0x%x)\n", batt_stat);
 else
  printf("%s\n", batt_msg[batt_stat]);
}
