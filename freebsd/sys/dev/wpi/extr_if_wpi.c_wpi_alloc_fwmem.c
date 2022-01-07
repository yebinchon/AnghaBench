
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpi_softc {int fw_dma; } ;


 scalar_t__ WPI_FW_DATA_MAXSZ ;
 scalar_t__ WPI_FW_TEXT_MAXSZ ;
 int wpi_dma_contig_alloc (struct wpi_softc*,int *,int *,scalar_t__,int) ;

__attribute__((used)) static int
wpi_alloc_fwmem(struct wpi_softc *sc)
{

 return wpi_dma_contig_alloc(sc, &sc->fw_dma, ((void*)0),
     WPI_FW_TEXT_MAXSZ + WPI_FW_DATA_MAXSZ, 16);
}
