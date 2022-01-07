
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sbintime_t ;
typedef int register_t ;


 int PSL_WE ;
 int mfmsr () ;
 int mtmsr (int) ;
 int powerpc_sync () ;

__attribute__((used)) static void
cpu_idle_booke(sbintime_t sbt)
{
 register_t msr;

 msr = mfmsr();





}
