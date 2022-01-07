
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * kd ;
 int swapmode_kvm () ;
 int swapmode_sysctl () ;

__attribute__((used)) static void
swapmode(void)
{
 if (kd != ((void*)0))
  swapmode_kvm();
 else
  swapmode_sysctl();
}
