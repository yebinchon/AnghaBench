
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int map; int regbase; int control_dmat; } ;


 int YDSXGR_EFFCTRLBASE ;
 int YDSXGR_GLOBALCTRL ;
 int YDSXGR_MAPOFEFFECT ;
 int YDSXGR_MAPOFREC ;
 int YDSXGR_MODE ;
 int YDSXGR_NATIVEADCINVOL ;
 int YDSXGR_NATIVEDACINVOL ;
 int YDSXGR_NATIVEDACOUTVOL ;
 int YDSXGR_PLAYCTRLBASE ;
 int YDSXGR_RECCTRLBASE ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int ds_enadsp (struct sc_info*,int ) ;
 int ds_wr (struct sc_info*,int ,int,int) ;

__attribute__((used)) static int
ds_uninit(struct sc_info *sc)
{
 ds_wr(sc, YDSXGR_NATIVEDACOUTVOL, 0x00000000, 4);
 ds_wr(sc, YDSXGR_NATIVEADCINVOL, 0, 4);
 ds_wr(sc, YDSXGR_NATIVEDACINVOL, 0, 4);
 ds_enadsp(sc, 0);
 ds_wr(sc, YDSXGR_MODE, 0x00010000, 4);
 ds_wr(sc, YDSXGR_MAPOFREC, 0x00000000, 4);
 ds_wr(sc, YDSXGR_MAPOFEFFECT, 0x00000000, 4);
 ds_wr(sc, YDSXGR_PLAYCTRLBASE, 0x00000000, 4);
 ds_wr(sc, YDSXGR_RECCTRLBASE, 0x00000000, 4);
 ds_wr(sc, YDSXGR_EFFCTRLBASE, 0x00000000, 4);
 ds_wr(sc, YDSXGR_GLOBALCTRL, 0, 2);

 bus_dmamap_unload(sc->control_dmat, sc->map);
 bus_dmamem_free(sc->control_dmat, sc->regbase, sc->map);

 return 0;
}
