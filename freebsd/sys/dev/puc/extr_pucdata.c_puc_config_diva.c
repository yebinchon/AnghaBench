
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_softc {struct puc_cfg* sc_cfg; } ;
struct puc_cfg {int subdevice; } ;
typedef enum puc_cfg_cmd { ____Placeholder_puc_cfg_cmd } puc_cfg_cmd ;


 int ENXIO ;
 int PUC_CFG_GET_OFS ;

__attribute__((used)) static int
puc_config_diva(struct puc_softc *sc, enum puc_cfg_cmd cmd, int port,
    intptr_t *res)
{
 const struct puc_cfg *cfg = sc->sc_cfg;

 if (cmd == PUC_CFG_GET_OFS) {
  if (cfg->subdevice == 0x1282)
   port <<= 1;
  else if (cfg->subdevice == 0x104b)
   port = (port == 3) ? 4 : port;
  *res = port * 8 + ((port > 2) ? 0x18 : 0);
  return (0);
 }
 return (ENXIO);
}
