
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_softc {int dummy; } ;
typedef enum puc_cfg_cmd { ____Placeholder_puc_cfg_cmd } puc_cfg_cmd ;


 int ENXIO ;


 int PUC_CFG_GET_TYPE ;
 intptr_t PUC_TYPE_SERIAL ;
 int puc_config (struct puc_softc*,int ,int,intptr_t*) ;

__attribute__((used)) static int
puc_config_sunix(struct puc_softc *sc, enum puc_cfg_cmd cmd, int port,
    intptr_t *res)
{
 int error;

 switch (cmd) {
 case 129:
  error = puc_config(sc, PUC_CFG_GET_TYPE, port, res);
  if (error != 0)
   return (error);
  *res = (*res == PUC_TYPE_SERIAL) ? (port & 3) * 8 : 0;
  return (0);
 case 128:
  error = puc_config(sc, PUC_CFG_GET_TYPE, port, res);
  if (error != 0)
   return (error);
  *res = (*res == PUC_TYPE_SERIAL && port <= 3) ? 0x10 : 0x14;
  return (0);
 default:
  break;
 }
 return (ENXIO);
}
