
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct thunder_mdio_softc {int mode; } ;
typedef enum thunder_mdio_mode { ____Placeholder_thunder_mdio_mode } thunder_mdio_mode ;


 int MODE_IEEE_C22 ;
 int SMI_CLK ;
 int SMI_CLK_MODE ;
 int SMI_CLK_PREAMBLE ;
 int mdio_reg_read (struct thunder_mdio_softc*,int ) ;
 int mdio_reg_write (struct thunder_mdio_softc*,int ,int ) ;

__attribute__((used)) static __inline void
thunder_mdio_set_mode(struct thunder_mdio_softc *sc,
    enum thunder_mdio_mode mode)
{
 uint64_t smi_clk;

 if (sc->mode == mode)
  return;


 smi_clk = mdio_reg_read(sc, SMI_CLK);
 if (mode == MODE_IEEE_C22)
  smi_clk &= ~SMI_CLK_MODE;
 else
  smi_clk |= SMI_CLK_MODE;

 smi_clk |= SMI_CLK_PREAMBLE;

 mdio_reg_write(sc, SMI_CLK, smi_clk);
 sc->mode = mode;
}
