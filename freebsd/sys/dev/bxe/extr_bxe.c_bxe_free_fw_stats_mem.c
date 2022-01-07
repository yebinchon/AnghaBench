
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bxe_softc {scalar_t__ fw_stats_data_mapping; int * fw_stats_data; scalar_t__ fw_stats_data_size; scalar_t__ fw_stats_req_mapping; int * fw_stats_req; scalar_t__ fw_stats_req_size; scalar_t__ fw_stats_num; int fw_stats_dma; } ;


 int bxe_dma_free (struct bxe_softc*,int *) ;

__attribute__((used)) static void
bxe_free_fw_stats_mem(struct bxe_softc *sc)
{
    bxe_dma_free(sc, &sc->fw_stats_dma);

    sc->fw_stats_num = 0;

    sc->fw_stats_req_size = 0;
    sc->fw_stats_req = ((void*)0);
    sc->fw_stats_req_mapping = 0;

    sc->fw_stats_data_size = 0;
    sc->fw_stats_data = ((void*)0);
    sc->fw_stats_data_mapping = 0;
}
