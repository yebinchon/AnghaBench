
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bge_softc {int dummy; } ;


 int BGE_MODECTL_BYTESWAP_DATA ;
 int BGE_MODECTL_BYTESWAP_NONFRAME ;
 int BGE_MODECTL_WORDSWAP_DATA ;
 int BGE_MODECTL_WORDSWAP_NONFRAME ;

__attribute__((used)) static uint32_t
bge_dma_swap_options(struct bge_softc *sc)
{
 uint32_t dma_options;

 dma_options = BGE_MODECTL_WORDSWAP_NONFRAME |
     BGE_MODECTL_BYTESWAP_DATA | BGE_MODECTL_WORDSWAP_DATA;

 dma_options |= BGE_MODECTL_BYTESWAP_NONFRAME;

 return (dma_options);
}
