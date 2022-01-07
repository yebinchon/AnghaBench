
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_info {int dev; } ;
struct cfg_info {int free; int subvendor; int subdevice; int scfg; int acl; int i2s; int spdif; int gpiomask; int gpiostate; int gpiodir; int codec; int name; } ;
struct TYPE_2__ {int subvendor; int subdevice; int codec; int name; } ;


 int ENVY24_E2PROM_ACL ;
 int ENVY24_E2PROM_GPIODIR ;
 int ENVY24_E2PROM_GPIOMASK ;
 int ENVY24_E2PROM_GPIOSTATE ;
 int ENVY24_E2PROM_I2S ;
 int ENVY24_E2PROM_SCFG ;
 int ENVY24_E2PROM_SIZE ;
 int ENVY24_E2PROM_SPDIF ;
 int ENVY24_E2PROM_SUBDEVICE ;
 int ENVY24_E2PROM_SUBVENDOR ;
 int M_ENVY24 ;
 int M_NOWAIT ;
 TYPE_1__* cfg_table ;
 int device_printf (int ,char*,...) ;
 int envy24_rdrom (struct sc_info*,int) ;
 struct cfg_info* malloc (int,int ,int ) ;

__attribute__((used)) static struct cfg_info *
envy24_rom2cfg(struct sc_info *sc)
{
 struct cfg_info *buff;
 int size;
 int i;




 size = envy24_rdrom(sc, ENVY24_E2PROM_SIZE);
 if (size < ENVY24_E2PROM_GPIODIR + 1) {



  return ((void*)0);
 }
 buff = malloc(sizeof(*buff), M_ENVY24, M_NOWAIT);
 if (buff == ((void*)0)) {



  return ((void*)0);
 }
 buff->free = 1;

 buff->subvendor = envy24_rdrom(sc, ENVY24_E2PROM_SUBVENDOR) << 8;
 buff->subvendor += envy24_rdrom(sc, ENVY24_E2PROM_SUBVENDOR + 1);
 buff->subdevice = envy24_rdrom(sc, ENVY24_E2PROM_SUBDEVICE) << 8;
 buff->subdevice += envy24_rdrom(sc, ENVY24_E2PROM_SUBDEVICE + 1);
 buff->scfg = envy24_rdrom(sc, ENVY24_E2PROM_SCFG);
 buff->acl = envy24_rdrom(sc, ENVY24_E2PROM_ACL);
 buff->i2s = envy24_rdrom(sc, ENVY24_E2PROM_I2S);
 buff->spdif = envy24_rdrom(sc, ENVY24_E2PROM_SPDIF);
 buff->gpiomask = envy24_rdrom(sc, ENVY24_E2PROM_GPIOMASK);
 buff->gpiostate = envy24_rdrom(sc, ENVY24_E2PROM_GPIOSTATE);
 buff->gpiodir = envy24_rdrom(sc, ENVY24_E2PROM_GPIODIR);

 for (i = 0; cfg_table[i].subvendor != 0 || cfg_table[i].subdevice != 0; i++)
  if (cfg_table[i].subvendor == buff->subvendor &&
      cfg_table[i].subdevice == buff->subdevice)
   break;
 buff->name = cfg_table[i].name;
 buff->codec = cfg_table[i].codec;

 return buff;
}
