
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtwn_softc {int dummy; } ;
struct r92c_fw_cmd_rsvdpage {int probe_resp; int null_data; scalar_t__ ps_poll; } ;
typedef int rsvd ;


 int R92C_CMD_RSVD_PAGE ;
 int r92c_fw_cmd (struct rtwn_softc*,int ,struct r92c_fw_cmd_rsvdpage*,int) ;

int
r92c_set_rsvd_page(struct rtwn_softc *sc, int probe_resp, int null,
    int qos_null)
{
 struct r92c_fw_cmd_rsvdpage rsvd;

 rsvd.probe_resp = probe_resp;
 rsvd.ps_poll = 0;
 rsvd.null_data = null;

 return (r92c_fw_cmd(sc, R92C_CMD_RSVD_PAGE, &rsvd, sizeof(rsvd)));
}
