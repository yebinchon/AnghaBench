
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct codec_softc {int clk; } ;


 int CODEC_RGADW ;
 int READ4 (struct codec_softc*,int ) ;
 int RGADW_RGADDR_S ;
 int RGADW_RGDIN_S ;
 int RGADW_RGWR ;
 int WRITE4 (struct codec_softc*,int ,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;

__attribute__((used)) static int
codec_write(struct codec_softc *sc, uint32_t reg, uint32_t val)
{
 uint32_t tmp;

 clk_enable(sc->clk);

 tmp = (reg << RGADW_RGADDR_S);
 tmp |= (val << RGADW_RGDIN_S);
 tmp |= RGADW_RGWR;

 WRITE4(sc, CODEC_RGADW, tmp);

 while(READ4(sc, CODEC_RGADW) & RGADW_RGWR)
  ;

 clk_disable(sc->clk);

 return (0);
}
