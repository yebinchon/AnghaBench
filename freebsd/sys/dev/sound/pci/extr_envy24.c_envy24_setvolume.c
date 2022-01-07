
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sc_info {int* left; int* right; TYPE_1__* cfg; int dev; } ;
struct TYPE_2__ {int subvendor; int subdevice; } ;


 int ENVY24_MT_VOLIDX ;
 int ENVY24_MT_VOLUME ;
 int device_printf (int ,char*,unsigned int) ;
 int envy24_wrmt (struct sc_info*,int ,int,int) ;

__attribute__((used)) static void
envy24_setvolume(struct sc_info *sc, unsigned ch)
{



if (sc->cfg->subvendor==0x153b && sc->cfg->subdevice==0x1138 ) {
        envy24_wrmt(sc, ENVY24_MT_VOLIDX, 16, 1);
        envy24_wrmt(sc, ENVY24_MT_VOLUME, 0x7f7f, 2);
        envy24_wrmt(sc, ENVY24_MT_VOLIDX, 17, 1);
        envy24_wrmt(sc, ENVY24_MT_VOLUME, 0x7f7f, 2);
 }

 envy24_wrmt(sc, ENVY24_MT_VOLIDX, ch * 2, 1);
 envy24_wrmt(sc, ENVY24_MT_VOLUME, 0x7f00 | sc->left[ch], 2);
 envy24_wrmt(sc, ENVY24_MT_VOLIDX, ch * 2 + 1, 1);
 envy24_wrmt(sc, ENVY24_MT_VOLUME, (sc->right[ch] << 8) | 0x7f, 2);
}
