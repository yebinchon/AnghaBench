
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sc_info {TYPE_1__* cfg; } ;
struct TYPE_2__ {int subvendor; int subdevice; } ;


 int ENVY24HT_CCS_GPIO_HDATA ;
 int ENVY24HT_CCS_GPIO_LDATA ;
 int envy24ht_rdcs (struct sc_info*,int ,int) ;

__attribute__((used)) static u_int32_t
envy24ht_gpiord(struct sc_info *sc)
{
 if (sc->cfg->subvendor == 0x153b && sc->cfg->subdevice == 0x1150)
 return envy24ht_rdcs(sc, ENVY24HT_CCS_GPIO_LDATA, 2);
 else
 return (envy24ht_rdcs(sc, ENVY24HT_CCS_GPIO_HDATA, 1) << 16 | envy24ht_rdcs(sc, ENVY24HT_CCS_GPIO_LDATA, 2));
}
