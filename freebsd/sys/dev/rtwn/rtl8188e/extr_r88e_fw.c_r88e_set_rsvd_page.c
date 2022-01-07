
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r88e_fw_cmd_rsvdpage {int probe_resp; int null_data; int null_data_qos; scalar_t__ null_data_qos_bt; scalar_t__ ps_poll; } ;
typedef int rsvd ;


 int R88E_CMD_RSVD_PAGE ;
 int r88e_fw_cmd (struct rtwn_softc*,int ,struct r88e_fw_cmd_rsvdpage*,int) ;

int
r88e_set_rsvd_page(struct rtwn_softc *sc, int probe_resp, int null,
    int qos_null)
{
 struct r88e_fw_cmd_rsvdpage rsvd;

 rsvd.probe_resp = probe_resp;
 rsvd.ps_poll = 0;
 rsvd.null_data = null;
 rsvd.null_data_qos = qos_null;
 rsvd.null_data_qos_bt = 0;
 return (r88e_fw_cmd(sc, R88E_CMD_RSVD_PAGE, &rsvd, sizeof(rsvd)));
}
