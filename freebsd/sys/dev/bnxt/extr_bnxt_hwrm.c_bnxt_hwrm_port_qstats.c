
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct hwrm_port_qstats_input {void* tx_stat_host_addr; void* rx_stat_host_addr; int port_id; int member_0; } ;
struct TYPE_4__ {int idi_paddr; } ;
struct TYPE_6__ {int idi_paddr; } ;
struct TYPE_5__ {int port_id; } ;
struct bnxt_softc {TYPE_1__ hw_tx_port_stats; TYPE_3__ hw_rx_port_stats; TYPE_2__ pf; } ;
typedef int req ;


 int BNXT_HWRM_LOCK (struct bnxt_softc*) ;
 int BNXT_HWRM_UNLOCK (struct bnxt_softc*) ;
 int HWRM_PORT_QSTATS ;
 int _hwrm_send_message (struct bnxt_softc*,struct hwrm_port_qstats_input*,int) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt_softc*,struct hwrm_port_qstats_input*,int ) ;
 int htole16 (int ) ;
 void* htole64 (int ) ;

int
bnxt_hwrm_port_qstats(struct bnxt_softc *softc)
{
 struct hwrm_port_qstats_input req = {0};
 int rc = 0;

 bnxt_hwrm_cmd_hdr_init(softc, &req, HWRM_PORT_QSTATS);

 req.port_id = htole16(softc->pf.port_id);
 req.rx_stat_host_addr = htole64(softc->hw_rx_port_stats.idi_paddr);
 req.tx_stat_host_addr = htole64(softc->hw_tx_port_stats.idi_paddr);

 BNXT_HWRM_LOCK(softc);
 rc = _hwrm_send_message(softc, &req, sizeof(req));
 BNXT_HWRM_UNLOCK(softc);

 return rc;
}
