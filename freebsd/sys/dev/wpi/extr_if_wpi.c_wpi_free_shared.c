
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int shared_dma; } ;


 int wpi_dma_contig_free (int *) ;

__attribute__((used)) static void
wpi_free_shared(struct wpi_softc *sc)
{
 wpi_dma_contig_free(&sc->shared_dma);
}
