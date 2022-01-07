
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int32_t ;
struct tws_softc {int q_lock; TYPE_4__* reqs; scalar_t__ dma_mem_phys; TYPE_1__* sense_bufs; int data_tag; scalar_t__ dma_mem; } ;
struct TYPE_6__ {int size_header; } ;
struct TYPE_7__ {TYPE_2__ header_desc; } ;
struct tws_command_packet {TYPE_3__ hdr; } ;
struct tws_command_header {int dummy; } ;
struct TYPE_8__ {int request_id; int state; int timeout; struct tws_command_packet* cmd_pkt; struct tws_softc* sc; scalar_t__ cmd_pkt_phy; int dma_map; } ;
struct TYPE_5__ {scalar_t__ hdr_pkt_phy; TYPE_3__* hdr; } ;


 int FAILURE ;
 int SUCCESS ;
 int TWS_FREE_Q ;
 int TWS_REQ_STATE_FREE ;
 int TWS_RESERVED_REQS ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,scalar_t__,int ) ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int bzero (struct tws_command_packet*,int ) ;
 int callout_init (int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tws_q_insert_tail (struct tws_softc*,TYPE_4__*,int ) ;
 int tws_queue_depth ;

__attribute__((used)) static int
tws_init_reqs(struct tws_softc *sc, u_int32_t dma_mem_size)
{

    struct tws_command_packet *cmd_buf;
    cmd_buf = (struct tws_command_packet *)sc->dma_mem;
    int i;

    bzero(cmd_buf, dma_mem_size);
    TWS_TRACE_DEBUG(sc, "phy cmd", sc->dma_mem_phys, 0);
    mtx_lock(&sc->q_lock);
    for ( i=0; i< tws_queue_depth; i++)
    {
        if (bus_dmamap_create(sc->data_tag, 0, &sc->reqs[i].dma_map)) {

            mtx_unlock(&sc->q_lock);
            return(FAILURE);
        }
        sc->reqs[i].cmd_pkt = &cmd_buf[i];

        sc->sense_bufs[i].hdr = &cmd_buf[i].hdr ;
        sc->sense_bufs[i].hdr_pkt_phy = sc->dma_mem_phys +
                              (i * sizeof(struct tws_command_packet));

        sc->reqs[i].cmd_pkt_phy = sc->dma_mem_phys +
                              sizeof(struct tws_command_header) +
                              (i * sizeof(struct tws_command_packet));
        sc->reqs[i].request_id = i;
        sc->reqs[i].sc = sc;

        sc->reqs[i].cmd_pkt->hdr.header_desc.size_header = 128;

 callout_init(&sc->reqs[i].timeout, 1);
        sc->reqs[i].state = TWS_REQ_STATE_FREE;
        if ( i >= TWS_RESERVED_REQS )
            tws_q_insert_tail(sc, &sc->reqs[i], TWS_FREE_Q);
    }
    mtx_unlock(&sc->q_lock);
    return(SUCCESS);
}
