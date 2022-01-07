
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_info {TYPE_1__* cfg; } ;
struct TYPE_2__ {int subvendor; int subdevice; } ;


 int ENVY24HT_CCS_GPIO_CTLDIR ;
 int envy24ht_wrcs (struct sc_info*,int ,int ,int) ;

__attribute__((used)) static void
envy24ht_gpiosetdir(struct sc_info *sc, u_int32_t dir)
{
 if (sc->cfg->subvendor == 0x153b && sc->cfg->subdevice == 0x1150)
 envy24ht_wrcs(sc, ENVY24HT_CCS_GPIO_CTLDIR, dir, 2);
 else
 envy24ht_wrcs(sc, ENVY24HT_CCS_GPIO_CTLDIR, dir, 4);
 return;
}
