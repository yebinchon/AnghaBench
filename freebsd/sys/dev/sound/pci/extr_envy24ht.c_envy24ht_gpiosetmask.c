
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_info {TYPE_1__* cfg; } ;
struct TYPE_2__ {int subdevice; } ;


 int ENVY24HT_CCS_GPIO_HMASK ;
 int ENVY24HT_CCS_GPIO_LMASK ;
 int envy24ht_wrcs (struct sc_info*,int ,int,int) ;

__attribute__((used)) static void
envy24ht_gpiosetmask(struct sc_info *sc, u_int32_t mask)
{
        envy24ht_wrcs(sc, ENVY24HT_CCS_GPIO_LMASK, mask, 2);
 if (sc->cfg->subdevice != 0x1150)
        envy24ht_wrcs(sc, ENVY24HT_CCS_GPIO_HMASK, mask >> 16, 1);
 return;
}
