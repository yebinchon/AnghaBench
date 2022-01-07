
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int C_SW1 ;
 int mftc0 (int,int ) ;
 int mttc0 (int,int ,int ) ;
 int set_thread_context (int) ;

void
platform_ipi_send(int cpuid)
{
 uint32_t reg;

 set_thread_context(cpuid);


 reg = mftc0(13, 0);
 reg |= (C_SW1);
 mttc0(13, 0, reg);
}
