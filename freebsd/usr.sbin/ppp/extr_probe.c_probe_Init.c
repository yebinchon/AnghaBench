
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int select_changes_time; int ipv6_available; } ;


 int LogDEBUG ;
 scalar_t__ ipv6_available () ;
 int log_Printf (int ,char*,char*) ;
 TYPE_1__ probe ;
 scalar_t__ select_changes_time () ;

void
probe_Init()
{
  probe.select_changes_time = select_changes_time() ? 1 : 0;
  log_Printf(LogDEBUG, "Select changes time: %s\n",
             probe.select_changes_time ? "yes" : "no");

  probe.ipv6_available = ipv6_available() ? 1 : 0;
  log_Printf(LogDEBUG, "IPv6 available: %s\n",
             probe.ipv6_available ? "yes" : "no");

}
