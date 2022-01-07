
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int DEB (int ) ;
 int SV_DMA_ADDR ;
 int SV_DMA_COUNT ;
 int SV_DMA_MODE ;
 int bus_space_write_1 (int ,int ,int ,int) ;
 int bus_space_write_4 (int ,int ,int ,int) ;
 int printf (char*,int,int,int) ;

__attribute__((used)) static void
sv_dma_set_config(bus_space_tag_t st, bus_space_handle_t sh,
    u_int32_t base, u_int32_t count, u_int8_t mode)
{
 bus_space_write_4(st, sh, SV_DMA_ADDR, base);
 bus_space_write_4(st, sh, SV_DMA_COUNT, count & 0xffffff);
 bus_space_write_1(st, sh, SV_DMA_MODE, mode);

 DEB(printf("base 0x%08x count %5d mode 0x%02x\n",
     base, count, mode));
}
