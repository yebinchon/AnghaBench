
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mwl_softc {int dummy; } ;
struct mwl_descdma {int dd_dmat; int dd_dmamap; int dd_desc; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;
 int memset (struct mwl_descdma*,int ,int) ;

__attribute__((used)) static void
mwl_desc_cleanup(struct mwl_softc *sc, struct mwl_descdma *dd)
{
 bus_dmamap_unload(dd->dd_dmat, dd->dd_dmamap);
 bus_dmamem_free(dd->dd_dmat, dd->dd_desc, dd->dd_dmamap);
 bus_dma_tag_destroy(dd->dd_dmat);

 memset(dd, 0, sizeof(*dd));
}
