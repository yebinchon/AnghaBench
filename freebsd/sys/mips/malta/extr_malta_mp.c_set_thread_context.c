
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ehb () ;
 int read_c0_register32 (int,int) ;
 int write_c0_register32 (int,int,int) ;

__attribute__((used)) static void
set_thread_context(int cpuid)
{
 uint32_t reg;

 reg = read_c0_register32(1, 1);
 reg &= ~(0xff);
 reg |= cpuid;
 write_c0_register32(1, 1, reg);

 ehb();
}
