
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_softc {struct puc_cfg* sc_cfg; } ;
struct puc_cfg {int ports; } ;
typedef enum puc_cfg_cmd { ____Placeholder_puc_cfg_cmd } puc_cfg_cmd ;


 int ENXIO ;


 int PUC_PORT_2S1P ;
 int PUC_PORT_8S ;

__attribute__((used)) static int
puc_config_siig(struct puc_softc *sc, enum puc_cfg_cmd cmd, int port,
    intptr_t *res)
{
 const struct puc_cfg *cfg = sc->sc_cfg;

 switch (cmd) {
 case 129:
  if (cfg->ports == PUC_PORT_8S) {
   *res = (port > 4) ? 8 * (port - 4) : 0;
   return (0);
  }
  break;
 case 128:
  if (cfg->ports == PUC_PORT_8S) {
   *res = 0x10 + ((port > 4) ? 0x10 : 4 * port);
   return (0);
  }
  if (cfg->ports == PUC_PORT_2S1P) {
   switch (port) {
   case 0: *res = 0x10; return (0);
   case 1: *res = 0x14; return (0);
   case 2: *res = 0x1c; return (0);
   }
  }
  break;
 default:
  break;
 }
 return (ENXIO);
}
