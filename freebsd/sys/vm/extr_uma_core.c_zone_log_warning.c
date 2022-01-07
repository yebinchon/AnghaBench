
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
struct timeval {int member_0; int member_1; } ;
struct TYPE_3__ {char* uz_warning; char* uz_name; int uz_ratecheck; } ;


 int printf (char*,char*,char*) ;
 scalar_t__ ratecheck (int *,struct timeval const*) ;
 int zone_warnings ;

__attribute__((used)) static void
zone_log_warning(uma_zone_t zone)
{
 static const struct timeval warninterval = { 300, 0 };

 if (!zone_warnings || zone->uz_warning == ((void*)0))
  return;

 if (ratecheck(&zone->uz_ratecheck, &warninterval))
  printf("[zone: %s] %s\n", zone->uz_name, zone->uz_warning);
}
