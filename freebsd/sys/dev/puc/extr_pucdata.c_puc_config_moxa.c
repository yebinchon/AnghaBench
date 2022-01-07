
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_softc {struct puc_cfg* sc_cfg; } ;
struct puc_cfg {int device; } ;
typedef enum puc_cfg_cmd { ____Placeholder_puc_cfg_cmd } puc_cfg_cmd ;


 int ENXIO ;
 int PUC_CFG_GET_OFS ;

__attribute__((used)) static int
puc_config_moxa(struct puc_softc *sc, enum puc_cfg_cmd cmd, int port,
    intptr_t *res)
{
 const struct puc_cfg *cfg = sc->sc_cfg;

 if (cmd == PUC_CFG_GET_OFS) {
  if (port == 3 && (cfg->device == 0x1045 ||
      cfg->device == 0x1144))
   port = 7;
  *res = port * 0x200;

  return 0;
 }
 return (ENXIO);
}
