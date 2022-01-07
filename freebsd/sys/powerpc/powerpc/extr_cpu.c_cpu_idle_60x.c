
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sbintime_t ;
typedef int register_t ;
 int PSL_POW ;
 int mfmsr () ;
 int mfpvr () ;
 int mtmsr (int) ;
 int powerpc_pow_enabled ;
 int powerpc_sync () ;

__attribute__((used)) static void
cpu_idle_60x(sbintime_t sbt)
{
 register_t msr;
 uint16_t vers;

 if (!powerpc_pow_enabled)
  return;

 msr = mfmsr();
 vers = mfpvr() >> 16;
}
