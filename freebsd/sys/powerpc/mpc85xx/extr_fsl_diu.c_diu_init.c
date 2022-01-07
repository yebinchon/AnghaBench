
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct panel_info {int panel_hbp; int panel_hpw; int panel_hfp; int panel_vbp; int panel_vpw; int panel_vfp; int panel_freq; } ;
struct TYPE_4__ {int fb_height; int fb_width; int fb_pbase; } ;
struct diu_softc {int * res; TYPE_2__** sc_planes; TYPE_1__ sc_info; TYPE_2__* sc_cursor; TYPE_2__* sc_gamma; int sc_dev; struct panel_info sc_panel; } ;
struct diu_area_descriptor {int dummy; } ;
struct TYPE_5__ {int pixel_format; scalar_t__ next_ad_addr; void* chroma_key_min; scalar_t__ chroma_key_max; scalar_t__ display_offset; scalar_t__ aoi_offset; void* aoi_size; void* source_size; void* bitmap_address; } ;


 int BP_H_SHIFT ;
 int BP_V_SHIFT ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DELTA_Y_S ;
 int DIU_BGND ;
 int DIU_CURSOR ;
 int DIU_CURS_POS ;
 int DIU_DESC_1 ;
 int DIU_DESC_2 ;
 int DIU_DESC_3 ;
 int DIU_DISP_SIZE ;
 int DIU_DIU_MODE ;
 int DIU_GAMMA ;
 int DIU_HSYN_PARA ;
 int DIU_INT_MASK ;
 int DIU_MODE_M ;
 int DIU_MODE_NORMAL ;
 int DIU_MODE_S ;
 int DIU_PLUT ;
 int DIU_VSYN_PARA ;
 int ENXIO ;
 int FP_H_SHIFT ;
 int FP_V_SHIFT ;
 int MAKE_PXLFMT (int,int,int,int,int,int,int,int ,int,int) ;
 int M_DEVBUF ;
 int M_ZERO ;
 int PW_H_SHIFT ;
 int PW_V_SHIFT ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;
 TYPE_2__* contigmalloc (int,int ,int ,int ,int ,int,int ) ;
 scalar_t__ diu_set_pxclk (int ,int ) ;
 void* htole32 (int) ;
 int vtophys (TYPE_2__*) ;

__attribute__((used)) static int
diu_init(struct diu_softc *sc)
{
 struct panel_info *panel;
 int reg;

 panel = &sc->sc_panel;


 reg = bus_read_4(sc->res[0], DIU_DIU_MODE);
 reg &= ~(DIU_MODE_M << DIU_MODE_S);
 bus_write_4(sc->res[0], DIU_DIU_MODE, reg);

 if (diu_set_pxclk(sc->sc_dev, panel->panel_freq) < 0) {
  return (ENXIO);
 }



 bus_write_4(sc->res[0], DIU_GAMMA, vtophys(sc->sc_gamma));
 bus_write_4(sc->res[0], DIU_CURSOR, vtophys(sc->sc_cursor));
 bus_write_4(sc->res[0], DIU_CURS_POS, 0);

 reg = ((sc->sc_info.fb_height) << DELTA_Y_S);
 reg |= sc->sc_info.fb_width;
 bus_write_4(sc->res[0], DIU_DISP_SIZE, reg);

 reg = (panel->panel_hbp << BP_H_SHIFT);
 reg |= (panel->panel_hpw << PW_H_SHIFT);
 reg |= (panel->panel_hfp << FP_H_SHIFT);
 bus_write_4(sc->res[0], DIU_HSYN_PARA, reg);

 reg = (panel->panel_vbp << BP_V_SHIFT);
 reg |= (panel->panel_vpw << PW_V_SHIFT);
 reg |= (panel->panel_vfp << FP_V_SHIFT);
 bus_write_4(sc->res[0], DIU_VSYN_PARA, reg);

 bus_write_4(sc->res[0], DIU_BGND, 0);


 bus_write_4(sc->res[0], DIU_INT_MASK, 0x3f);


 sc->sc_planes[0] = contigmalloc(sizeof(struct diu_area_descriptor),
  M_DEVBUF, M_ZERO, 0, BUS_SPACE_MAXADDR_32BIT, 32, 0);
 bus_write_4(sc->res[0], DIU_DESC_1, vtophys(sc->sc_planes[0]));
 bus_write_4(sc->res[0], DIU_DESC_2, 0);
 bus_write_4(sc->res[0], DIU_DESC_3, 0);
 reg = htole32((8 << (4 * 3)) | (8 << 4 * 2) | (8 << 4 * 1) | (8 << 4 * 0) | (1 << 28) | (3 << 16) | (3 << 25) | (2 << 19) | (1 << 21) | (0 << 24));
 sc->sc_planes[0]->pixel_format = reg;

 sc->sc_planes[0]->bitmap_address = htole32(sc->sc_info.fb_pbase);

 reg = (sc->sc_info.fb_width | (sc->sc_info.fb_height << 12));
 sc->sc_planes[0]->source_size = htole32(reg);

 reg = (sc->sc_info.fb_width | (sc->sc_info.fb_height << 16));
 sc->sc_planes[0]->aoi_size = htole32(reg);

 sc->sc_planes[0]->aoi_offset = 0;

 sc->sc_planes[0]->display_offset = 0;

 sc->sc_planes[0]->chroma_key_max = 0;

 reg = 255 << 16 | 255 << 8 | 255;
 sc->sc_planes[0]->chroma_key_min = htole32(reg);

 sc->sc_planes[0]->next_ad_addr = 0;


 bus_write_4(sc->res[0], DIU_PLUT, 0x1f5f666);


 reg = bus_read_4(sc->res[0], DIU_DIU_MODE);
 reg &= ~(DIU_MODE_M << DIU_MODE_S);
 reg |= (DIU_MODE_NORMAL << DIU_MODE_S);
 bus_write_4(sc->res[0], DIU_DIU_MODE, reg);

 return (0);
}
