
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int64_t ;
typedef int u_int32_t ;
struct TYPE_4__ {int reqs_in; } ;
struct tws_softc {int io_lock; TYPE_2__ stats; int q_lock; int bus_mfa_handle; int bus_mfa_tag; scalar_t__ obfl_q_overrun; } ;
struct tws_request {int cmd_pkt_phy; scalar_t__ type; TYPE_1__* cmd_pkt; } ;
struct tws_command_packet {int dummy; } ;
struct tws_command_header {int dummy; } ;
struct TYPE_3__ {int cmd; } ;


 int TWS_BIT0 ;
 int TWS_BUSY_Q ;
 int TWS_FIFO_EMPTY ;
 int TWS_I2O0_HIBQPH ;
 int TWS_I2O0_HIBQPL ;
 int TWS_REQ_RET_PEND_NOMFA ;
 int TWS_REQ_RET_SUBMIT_SUCCESS ;
 scalar_t__ TWS_REQ_TYPE_SCSI_IO ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int,int ) ;
 int bus_space_write_1 (int ,int ,int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tws_init_obfl_q (struct tws_softc*) ;
 int tws_q_insert_tail (struct tws_softc*,struct tws_request*,int ) ;
 int tws_read_reg (struct tws_softc*,int ,int) ;
 int tws_write_reg (struct tws_softc*,int ,int,int) ;

int
tws_submit_command(struct tws_softc *sc, struct tws_request *req)
{
    u_int32_t regl, regh;
    u_int64_t mfa=0;






    mtx_lock(&sc->io_lock);

    if ( sc->obfl_q_overrun ) {
        tws_init_obfl_q(sc);
    }
    regh = tws_read_reg(sc, TWS_I2O0_HIBQPH, 4);
    mfa = regh;
    mfa = mfa << 32;
    regl = tws_read_reg(sc, TWS_I2O0_HIBQPL, 4);
    mfa = mfa | regl;


    mtx_unlock(&sc->io_lock);

    if ( mfa == TWS_FIFO_EMPTY ) {
        TWS_TRACE_DEBUG(sc, "inbound fifo empty", mfa, 0);






        return(TWS_REQ_RET_PEND_NOMFA);

    }


    for (int i=mfa; i<(sizeof(struct tws_command_packet)+ mfa -
                            sizeof( struct tws_command_header)); i++) {

        bus_space_write_1(sc->bus_mfa_tag, sc->bus_mfa_handle,i,
                               ((u_int8_t *)&req->cmd_pkt->cmd)[i-mfa]);

    }


    if ( req->type == TWS_REQ_TYPE_SCSI_IO ) {
        mtx_lock(&sc->q_lock);
        tws_q_insert_tail(sc, req, TWS_BUSY_Q);
        mtx_unlock(&sc->q_lock);
    }






    mtx_lock(&sc->io_lock);

    tws_write_reg(sc, TWS_I2O0_HIBQPH, regh, 4);
    tws_write_reg(sc, TWS_I2O0_HIBQPL, regl, 4);

    sc->stats.reqs_in++;
    mtx_unlock(&sc->io_lock);

    return(TWS_REQ_RET_SUBMIT_SUCCESS);

}
