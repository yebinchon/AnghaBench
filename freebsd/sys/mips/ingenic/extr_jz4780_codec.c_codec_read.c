
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct codec_softc {int clk; } ;


 int CODEC_RGADW ;
 int CODEC_RGDATA ;
 int READ4 (struct codec_softc*,int ) ;
 int RGADW_RGADDR_S ;
 int WRITE4 (struct codec_softc*,int ,int) ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;

__attribute__((used)) static int
codec_read(struct codec_softc *sc, uint32_t reg)
{
 uint32_t tmp;

 clk_enable(sc->clk);

 tmp = (reg << RGADW_RGADDR_S);
 WRITE4(sc, CODEC_RGADW, tmp);

 tmp = READ4(sc, CODEC_RGDATA);

 clk_disable(sc->clk);

 return (tmp);
}
