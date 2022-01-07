
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int shared; int shared_dma; } ;
struct wpi_shared {int dummy; } ;


 int wpi_dma_contig_alloc (struct wpi_softc*,int *,void**,int,int) ;

__attribute__((used)) static int
wpi_alloc_shared(struct wpi_softc *sc)
{

 return wpi_dma_contig_alloc(sc, &sc->shared_dma,
     (void **)&sc->shared, sizeof (struct wpi_shared), 4096);
}
