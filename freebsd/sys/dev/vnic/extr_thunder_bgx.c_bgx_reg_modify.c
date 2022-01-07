
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct bgx {int reg_base; } ;
typedef int bus_space_handle_t ;


 int bus_read_8 (int ,int) ;
 int bus_write_8 (int ,int,int) ;

__attribute__((used)) static void
bgx_reg_modify(struct bgx *bgx, uint8_t lmac, uint64_t offset, uint64_t val)
{
 bus_space_handle_t addr;

 addr = ((uint32_t)lmac << 20) + offset;

 bus_write_8(bgx->reg_base, addr, val | bus_read_8(bgx->reg_base, addr));
}
