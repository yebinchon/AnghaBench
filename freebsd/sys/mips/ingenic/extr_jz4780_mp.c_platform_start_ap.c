
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 int JZ4780_MAXCPU ;
 int JZ_CORECTL_RPC0 ;
 int JZ_CORECTL_SWRST0 ;
 int JZ_REIM_ENTRY_MASK ;
 int JZ_REIM_MIRQ0M ;
 int KASSERT (int,char*) ;
 int MIPS_KSEG0_TO_PHYS (int ) ;
 int MIPS_PHYS_TO_KSEG1 (int ) ;
 int jz4780_core_powerup () ;
 int jz4780_mpentry ;
 int mips_rd_xburst_core_ctl () ;
 int mips_rd_xburst_reim () ;
 int mips_wr_xburst_core_ctl (int) ;
 int mips_wr_xburst_reim (int) ;

int
platform_start_ap(int cpuid)
{
 uint32_t reg, addr;

 if (cpuid >= JZ4780_MAXCPU)
  return (EINVAL);


 addr = MIPS_PHYS_TO_KSEG1(MIPS_KSEG0_TO_PHYS(jz4780_mpentry));
 KASSERT((addr & ~JZ_REIM_ENTRY_MASK) == 0,
     ("Unaligned mpentry"));


 reg = mips_rd_xburst_reim();
 reg &= ~JZ_REIM_ENTRY_MASK;
 reg |= addr & JZ_REIM_ENTRY_MASK;


 reg |= JZ_REIM_MIRQ0M;
 mips_wr_xburst_reim(reg);


 reg = mips_rd_xburst_core_ctl();
 reg |= (JZ_CORECTL_SWRST0 << cpuid) | (JZ_CORECTL_RPC0 << cpuid);
 mips_wr_xburst_core_ctl(reg);


 jz4780_core_powerup();


 reg &= ~(JZ_CORECTL_SWRST0 << cpuid);
 mips_wr_xburst_core_ctl(reg);

 return (0);
}
