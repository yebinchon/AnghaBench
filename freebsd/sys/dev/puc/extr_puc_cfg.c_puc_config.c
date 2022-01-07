
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct puc_softc {struct puc_cfg* sc_cfg; } ;
struct puc_cfg {int (* config_function ) (struct puc_softc*,int,int,intptr_t*) ;intptr_t clock; int const ports; int d_ofs; intptr_t rid; int d_rid; int * desc; } ;
typedef enum puc_cfg_cmd { ____Placeholder_puc_cfg_cmd } puc_cfg_cmd ;


 int EDOOFUS ;
 int ENXIO ;
 intptr_t PUC_ILR_NONE ;
 intptr_t PUC_TYPE_PARALLEL ;
 intptr_t PUC_TYPE_SERIAL ;
 int stub1 (struct puc_softc*,int,int,intptr_t*) ;

int
puc_config(struct puc_softc *sc, enum puc_cfg_cmd cmd, int port, intptr_t *r)
{
 const struct puc_cfg *cfg = sc->sc_cfg;
 int error;

 if (cfg->config_function != ((void*)0)) {
  error = cfg->config_function(sc, cmd, port, r);
  if (!error)
   return (0);
 } else
  error = EDOOFUS;

 switch (cmd) {
 case 151:
  if (cfg->clock < 0)
   return (error);
  *r = cfg->clock;
  return (0);
 case 150:
  if (cfg->desc == ((void*)0))
   return (error);
  *r = (intptr_t)cfg->desc;
  return (0);
 case 149:
  *r = PUC_ILR_NONE;
  return (0);
 case 148:

  *r = 8;
  return (0);
 case 147:

  switch (cfg->ports) {
  case 128:
   return (error);
  case 140:
  case 139:
   *r = 1;
   return (0);
  case 138:
  case 136:
  case 135:
   *r = 2;
   return (0);
  case 137:
  case 134:
  case 133:
   *r = 3;
   return (0);
  case 132:
   *r = 4;
   return (0);
  case 131:
   *r = 5;
   return (0);
  case 130:
   *r = 6;
   return (0);
  case 129:
   *r = 8;
   return (0);
  case 142:
   *r = 12;
   return (0);
  case 141:
   *r = 16;
   return (0);
  }
  break;
 case 146:

  if (cfg->d_ofs < 0)
   return (error);
  *r = port * cfg->d_ofs;
  return (0);
 case 145:

  if (port == 0) {
   if (cfg->rid < 0)
    return (error);
   *r = cfg->rid;
   return (0);
  }
  if (cfg->d_rid < 0)
   return (error);
  if (cfg->rid < 0) {
   error = puc_config(sc, 145, 0, r);
   if (error)
    return (error);
  } else
   *r = cfg->rid;
  *r += port * cfg->d_rid;
  return (0);
 case 144:

  if (cfg->ports == 128)
   return (error);
  switch (port) {
  case 0:
   if (cfg->ports == 140 ||
       cfg->ports == 136)
    *r = PUC_TYPE_PARALLEL;
   else
    *r = PUC_TYPE_SERIAL;
   return (0);
  case 1:
   if (cfg->ports == 138 ||
       cfg->ports == 137 ||
       cfg->ports == 136)
    *r = PUC_TYPE_PARALLEL;
   else
    *r = PUC_TYPE_SERIAL;
   return (0);
  case 2:
   if (cfg->ports == 137 ||
       cfg->ports == 134)
    *r = PUC_TYPE_PARALLEL;
   else
    *r = PUC_TYPE_SERIAL;
   return (0);
  case 4:
   if (cfg->ports == 131)
    *r = PUC_TYPE_PARALLEL;
   else
    *r = PUC_TYPE_SERIAL;
   return (0);
  }
  *r = PUC_TYPE_SERIAL;
  return (0);
 case 143:
  *r = ENXIO;
  return (0);
 }

 return (ENXIO);
}
