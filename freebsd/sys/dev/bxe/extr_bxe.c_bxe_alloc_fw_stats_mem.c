
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int uint8_t ;
struct stats_query_header {int dummy; } ;
struct stats_query_cmd_group {int dummy; } ;
struct stats_counter {int dummy; } ;
struct per_queue_stats {int dummy; } ;
struct per_port_stats {int dummy; } ;
struct per_pf_stats {int dummy; } ;
struct TYPE_2__ {scalar_t__ paddr; scalar_t__ vaddr; } ;
struct bxe_softc {int fw_stats_num; int fw_stats_req_size; int fw_stats_data_size; scalar_t__ fw_stats_data_mapping; scalar_t__ fw_stats_req_mapping; TYPE_1__ fw_stats_dma; struct bxe_fw_stats_data* fw_stats_data; struct bxe_fw_stats_req* fw_stats_req; } ;
struct bxe_fw_stats_req {int dummy; } ;
struct bxe_fw_stats_data {int dummy; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,...) ;
 int BXE_NUM_ETH_QUEUES (struct bxe_softc*) ;
 int DBG_LOAD ;
 int STATS_QUERY_CMD_COUNT ;
 scalar_t__ bxe_dma_alloc (struct bxe_softc*,int,TYPE_1__*,char*) ;
 int bxe_free_fw_stats_mem (struct bxe_softc*) ;

__attribute__((used)) static int
bxe_alloc_fw_stats_mem(struct bxe_softc *sc)
{
    uint8_t num_queue_stats;
    int num_groups;


    num_queue_stats = BXE_NUM_ETH_QUEUES(sc);





    sc->fw_stats_num = (2 + num_queue_stats);







    num_groups =
        ((sc->fw_stats_num / STATS_QUERY_CMD_COUNT) +
         ((sc->fw_stats_num % STATS_QUERY_CMD_COUNT) ? 1 : 0));

    BLOGD(sc, DBG_LOAD, "stats fw_stats_num %d num_groups %d\n",
          sc->fw_stats_num, num_groups);

    sc->fw_stats_req_size =
        (sizeof(struct stats_query_header) +
         (num_groups * sizeof(struct stats_query_cmd_group)));
    sc->fw_stats_data_size =
        (sizeof(struct stats_counter) +
         sizeof(struct per_port_stats) +
         sizeof(struct per_pf_stats) +

         (sizeof(struct per_queue_stats) * num_queue_stats));

    if (bxe_dma_alloc(sc, (sc->fw_stats_req_size + sc->fw_stats_data_size),
                      &sc->fw_stats_dma, "fw stats") != 0) {
        bxe_free_fw_stats_mem(sc);
        return (-1);
    }



    sc->fw_stats_req =
        (struct bxe_fw_stats_req *)sc->fw_stats_dma.vaddr;
    sc->fw_stats_req_mapping = sc->fw_stats_dma.paddr;

    sc->fw_stats_data =
        (struct bxe_fw_stats_data *)((uint8_t *)sc->fw_stats_dma.vaddr +
                                     sc->fw_stats_req_size);
    sc->fw_stats_data_mapping = (sc->fw_stats_dma.paddr +
                                 sc->fw_stats_req_size);

    BLOGD(sc, DBG_LOAD, "statistics request base address set to %#jx\n",
          (uintmax_t)sc->fw_stats_req_mapping);

    BLOGD(sc, DBG_LOAD, "statistics data base address set to %#jx\n",
          (uintmax_t)sc->fw_stats_data_mapping);

    return (0);
}
