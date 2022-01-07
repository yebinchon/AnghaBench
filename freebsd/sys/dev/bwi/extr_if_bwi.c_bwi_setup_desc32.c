
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bwi_softc {int dummy; } ;
struct bwi_desc32 {void* ctrl; void* addr; } ;
typedef int bus_addr_t ;


 int BWI_DESC32_A_ADDR_MASK ;
 int BWI_DESC32_A_FUNC_MASK ;
 int BWI_DESC32_A_FUNC_TXRX ;
 int BWI_DESC32_C_ADDRHI_MASK ;
 int BWI_DESC32_C_BUFLEN_MASK ;
 int BWI_DESC32_C_EOR ;
 int BWI_DESC32_C_FRAME_END ;
 int BWI_DESC32_C_FRAME_START ;
 int BWI_DESC32_C_INTR ;
 int __SHIFTIN (int,int ) ;
 int __SHIFTOUT (int ,int ) ;
 void* htole32 (int) ;

__attribute__((used)) static __inline void
bwi_setup_desc32(struct bwi_softc *sc, struct bwi_desc32 *desc_array,
   int ndesc, int desc_idx, bus_addr_t paddr, int buf_len,
   int tx)
{
 struct bwi_desc32 *desc = &desc_array[desc_idx];
 uint32_t ctrl, addr, addr_hi, addr_lo;

 addr_lo = __SHIFTOUT(paddr, BWI_DESC32_A_ADDR_MASK);
 addr_hi = __SHIFTOUT(paddr, BWI_DESC32_A_FUNC_MASK);

 addr = __SHIFTIN(addr_lo, BWI_DESC32_A_ADDR_MASK) |
        __SHIFTIN(BWI_DESC32_A_FUNC_TXRX, BWI_DESC32_A_FUNC_MASK);

 ctrl = __SHIFTIN(buf_len, BWI_DESC32_C_BUFLEN_MASK) |
        __SHIFTIN(addr_hi, BWI_DESC32_C_ADDRHI_MASK);
 if (desc_idx == ndesc - 1)
  ctrl |= BWI_DESC32_C_EOR;
 if (tx) {

  ctrl |= BWI_DESC32_C_FRAME_START |
   BWI_DESC32_C_FRAME_END |
   BWI_DESC32_C_INTR;
 }

 desc->addr = htole32(addr);
 desc->ctrl = htole32(ctrl);
}
