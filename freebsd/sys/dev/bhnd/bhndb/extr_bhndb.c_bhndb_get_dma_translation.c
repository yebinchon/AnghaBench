
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct TYPE_4__ {int chip_caps; } ;
struct bhndb_softc {TYPE_3__* bus_res; TYPE_1__ chipid; } ;
struct bhndb_hwcfg {struct bhnd_dma_translation* dma_translations; } ;
struct bhnd_dma_translation {int base_addr; int flags; int addr_mask; int addrext_mask; } ;
typedef int device_t ;
typedef int * bus_dma_tag_t ;
typedef int bhnd_addr_t ;
struct TYPE_6__ {TYPE_2__* res; struct bhndb_hwcfg* cfg; } ;
struct TYPE_5__ {size_t num_dma_tags; int ** dma_tags; } ;


 int BHND_CAP_BP64 ;
 scalar_t__ BHND_DMA_ADDR_32BIT ;
 int BHND_DMA_ADDR_BITMASK (scalar_t__) ;
 int ENODEV ;
 int ENOENT ;
 struct bhndb_softc* device_get_softc (int ) ;

__attribute__((used)) static inline int
bhndb_get_dma_translation(device_t dev, device_t child, u_int width,
    uint32_t flags, bus_dma_tag_t *dmat,
    struct bhnd_dma_translation *translation)
{
 struct bhndb_softc *sc;
 const struct bhndb_hwcfg *hwcfg;
 const struct bhnd_dma_translation *match;
 bus_dma_tag_t match_dmat;
 bhnd_addr_t addr_mask, match_addr_mask;

 sc = device_get_softc(dev);
 hwcfg = sc->bus_res->cfg;


 if (sc->bus_res->res->dma_tags == ((void*)0))
  return (ENODEV);


 if (width > BHND_DMA_ADDR_32BIT) {

  if (!(sc->chipid.chip_caps & BHND_CAP_BP64))
   width = BHND_DMA_ADDR_32BIT;
 }


 addr_mask = BHND_DMA_ADDR_BITMASK(width);

 match = ((void*)0);
 match_addr_mask = 0x0;
 match_dmat = ((void*)0);

 for (size_t i = 0; i < sc->bus_res->res->num_dma_tags; i++) {
  const struct bhnd_dma_translation *dwin;
  bhnd_addr_t masked;

  dwin = &hwcfg->dma_translations[i];


  if ((dwin->base_addr & addr_mask) != dwin->base_addr)
   continue;


  if ((dwin->flags & flags) != flags)
   continue;



  masked = (dwin->addr_mask | dwin->addrext_mask) & addr_mask;
  if (masked == 0)
   continue;


  if (match == ((void*)0) || masked > match_addr_mask) {
   match = dwin;
   match_addr_mask = masked;
   match_dmat = sc->bus_res->res->dma_tags[i];
  }
 }

 if (match == ((void*)0) || match_addr_mask == 0)
  return (ENOENT);

 if (dmat != ((void*)0))
  *dmat = match_dmat;

 if (translation != ((void*)0))
  *translation = *match;

 return (0);
}
