
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int bus_space_tag_t ;
typedef int bus_space_handle_t ;


 int SV_DMA_COUNT ;
 int bus_space_read_4 (int ,int ,int ) ;

__attribute__((used)) static u_int32_t
sv_dma_get_count(bus_space_tag_t st, bus_space_handle_t sh)
{
 return bus_space_read_4(st, sh, SV_DMA_COUNT) & 0xffffff;
}
