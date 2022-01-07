
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * kd ;
 int ttymode_kvm () ;
 int ttymode_sysctl () ;

__attribute__((used)) static void
ttymode(void)
{

 if (kd != ((void*)0))
  ttymode_kvm();
 else
  ttymode_sysctl();
}
