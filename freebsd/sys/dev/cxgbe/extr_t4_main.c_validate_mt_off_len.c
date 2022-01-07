
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct adapter {int dummy; } ;


 int A_MA_EDRAM0_BAR ;
 int A_MA_EDRAM1_BAR ;
 int A_MA_EXT_MEMORY1_BAR ;
 int A_MA_EXT_MEMORY_BAR ;
 int A_MA_TARGET_MEM_ENABLE ;
 int EINVAL ;
 int F_EDRAM0_ENABLE ;
 int F_EDRAM1_ENABLE ;
 int F_EXT_MEM1_ENABLE ;
 int F_EXT_MEM_ENABLE ;
 int G_EDRAM0_BASE (int) ;
 int G_EDRAM1_BASE (int) ;
 int G_EXT_MEM1_BASE (int) ;
 int G_EXT_MEM_BASE (int) ;




 int fwmtype_to_hwmtype (int) ;
 int is_t5 (struct adapter*) ;
 int t4_read_reg (struct adapter*,int ) ;
 int validate_mem_range (struct adapter*,int,int) ;

__attribute__((used)) static int
validate_mt_off_len(struct adapter *sc, int mtype, uint32_t off, uint32_t len,
    uint32_t *addr)
{
 uint32_t em, addr_len, maddr;


 if (off & 3 || len & 3 || len == 0)
  return (EINVAL);

 em = t4_read_reg(sc, A_MA_TARGET_MEM_ENABLE);
 switch (fwmtype_to_hwmtype(mtype)) {
 case 131:
  if (!(em & F_EDRAM0_ENABLE))
   return (EINVAL);
  addr_len = t4_read_reg(sc, A_MA_EDRAM0_BAR);
  maddr = G_EDRAM0_BASE(addr_len) << 20;
  break;
 case 130:
  if (!(em & F_EDRAM1_ENABLE))
   return (EINVAL);
  addr_len = t4_read_reg(sc, A_MA_EDRAM1_BAR);
  maddr = G_EDRAM1_BASE(addr_len) << 20;
  break;
 case 129:
  if (!(em & F_EXT_MEM_ENABLE))
   return (EINVAL);
  addr_len = t4_read_reg(sc, A_MA_EXT_MEMORY_BAR);
  maddr = G_EXT_MEM_BASE(addr_len) << 20;
  break;
 case 128:
  if (!is_t5(sc) || !(em & F_EXT_MEM1_ENABLE))
   return (EINVAL);
  addr_len = t4_read_reg(sc, A_MA_EXT_MEMORY1_BAR);
  maddr = G_EXT_MEM1_BASE(addr_len) << 20;
  break;
 default:
  return (EINVAL);
 }

 *addr = maddr + off;
 return (validate_mem_range(sc, *addr, len));
}
