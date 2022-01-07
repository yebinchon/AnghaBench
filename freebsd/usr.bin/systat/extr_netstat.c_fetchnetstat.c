
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fetchnetstat_kvm () ;
 int fetchnetstat_sysctl () ;
 scalar_t__ use_kvm ;

void
fetchnetstat(void)
{
 if (use_kvm)
  fetchnetstat_kvm();
 else
  fetchnetstat_sysctl();
}
