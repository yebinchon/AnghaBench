
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct bgx {int reg_base; } ;
typedef scalar_t__ bus_space_handle_t ;


 int bus_write_8 (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
bgx_reg_write(struct bgx *bgx, uint8_t lmac, uint64_t offset, uint64_t val)
{
 bus_space_handle_t addr;

 addr = ((uint32_t)lmac << 20) + offset;

 bus_write_8(bgx->reg_base, addr, val);
}
