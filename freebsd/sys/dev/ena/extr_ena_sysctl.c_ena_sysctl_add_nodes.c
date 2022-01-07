
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_adapter {int dummy; } ;


 int ena_sysctl_add_stats (struct ena_adapter*) ;
 int ena_sysctl_add_tuneables (struct ena_adapter*) ;
 int ena_sysctl_add_wd (struct ena_adapter*) ;

void
ena_sysctl_add_nodes(struct ena_adapter *adapter)
{
 ena_sysctl_add_wd(adapter);
 ena_sysctl_add_stats(adapter);
 ena_sysctl_add_tuneables(adapter);
}
