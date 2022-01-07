
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct vi_info {int viid; int rss_base; int vin; int vfvld; int rss_size; } ;
struct port_info {int port_id; int tx_chan; int lport; int rx_e_chan_map; int mps_bg_map; struct vi_info* vi; } ;
struct TYPE_3__ {int r_caps; } ;
struct TYPE_4__ {int portvec; TYPE_1__ vfres; } ;
struct adapter {int flags; TYPE_2__ params; } ;


 int FW_CMD_CAP_PORT ;
 int FW_PARAMS_MNEM_DEV ;
 int FW_PARAMS_PARAM_DEV_RSSINFO ;
 int IS_VF ;
 int V_FW_PARAMS_MNEM (int ) ;
 int V_FW_PARAMS_PARAM_X (int ) ;
 int V_FW_PARAMS_PARAM_YZ (int) ;
 struct port_info* adap2pinfo (struct adapter*,int) ;
 int t4_alloc_vi (struct adapter*,int,int,int,int,int,int *,int *,int *,int *) ;
 int t4_get_mps_bg_map (struct adapter*,int) ;
 int t4_get_rx_e_chan_map (struct adapter*,int) ;
 int t4_os_set_hw_addr (struct port_info*,int *) ;
 int t4_query_params (struct adapter*,int,int,int,int,int*,int*) ;
 int t4_update_port_info (struct port_info*) ;

int t4_port_init(struct adapter *adap, int mbox, int pf, int vf, int port_id)
{
 u8 addr[6];
 int ret, i, j;
 struct port_info *p = adap2pinfo(adap, port_id);
 u32 param, val;
 struct vi_info *vi = &p->vi[0];

 for (i = 0, j = -1; i <= p->port_id; i++) {
  do {
   j++;
  } while ((adap->params.portvec & (1 << j)) == 0);
 }

 p->tx_chan = j;
 p->mps_bg_map = t4_get_mps_bg_map(adap, j);
 p->rx_e_chan_map = t4_get_rx_e_chan_map(adap, j);
 p->lport = j;

 if (!(adap->flags & IS_VF) ||
     adap->params.vfres.r_caps & FW_CMD_CAP_PORT) {
   t4_update_port_info(p);
 }

 ret = t4_alloc_vi(adap, mbox, j, pf, vf, 1, addr, &vi->rss_size,
     &vi->vfvld, &vi->vin);
 if (ret < 0)
  return ret;

 vi->viid = ret;
 t4_os_set_hw_addr(p, addr);

 param = V_FW_PARAMS_MNEM(FW_PARAMS_MNEM_DEV) |
     V_FW_PARAMS_PARAM_X(FW_PARAMS_PARAM_DEV_RSSINFO) |
     V_FW_PARAMS_PARAM_YZ(vi->viid);
 ret = t4_query_params(adap, mbox, pf, vf, 1, &param, &val);
 if (ret)
  vi->rss_base = 0xffff;
 else {

  vi->rss_base = val & 0xffff;
 }

 return 0;
}
