
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tp_err_stats {int ofld_no_neigh; int * tcp6_in_errs; int * ofld_vlan_drops; int * tnl_tx_drops; int * ofld_chan_drops; int * tnl_cong_drops; int * tcp_in_errs; int * hdr_in_errs; int * mac_in_errs; } ;
struct adapter {TYPE_1__* chip_params; } ;
struct TYPE_2__ {int nchan; } ;


 int A_TP_MIB_HDR_IN_ERR_0 ;
 int A_TP_MIB_MAC_IN_ERR_0 ;
 int A_TP_MIB_OFD_ARP_DROP ;
 int A_TP_MIB_OFD_CHN_DROP_0 ;
 int A_TP_MIB_OFD_VLN_DROP_0 ;
 int A_TP_MIB_TCP_IN_ERR_0 ;
 int A_TP_MIB_TCP_V6IN_ERR_0 ;
 int A_TP_MIB_TNL_CNG_DROP_0 ;
 int A_TP_MIB_TNL_DROP_0 ;
 int t4_tp_mib_read (struct adapter*,int *,int,int ,int) ;

void t4_tp_get_err_stats(struct adapter *adap, struct tp_err_stats *st,
    bool sleep_ok)
{
 int nchan = adap->chip_params->nchan;

 t4_tp_mib_read(adap, st->mac_in_errs, nchan, A_TP_MIB_MAC_IN_ERR_0,
         sleep_ok);

 t4_tp_mib_read(adap, st->hdr_in_errs, nchan, A_TP_MIB_HDR_IN_ERR_0,
         sleep_ok);

 t4_tp_mib_read(adap, st->tcp_in_errs, nchan, A_TP_MIB_TCP_IN_ERR_0,
         sleep_ok);

 t4_tp_mib_read(adap, st->tnl_cong_drops, nchan,
         A_TP_MIB_TNL_CNG_DROP_0, sleep_ok);

 t4_tp_mib_read(adap, st->ofld_chan_drops, nchan,
         A_TP_MIB_OFD_CHN_DROP_0, sleep_ok);

 t4_tp_mib_read(adap, st->tnl_tx_drops, nchan, A_TP_MIB_TNL_DROP_0,
         sleep_ok);

 t4_tp_mib_read(adap, st->ofld_vlan_drops, nchan,
         A_TP_MIB_OFD_VLN_DROP_0, sleep_ok);

 t4_tp_mib_read(adap, st->tcp6_in_errs, nchan,
         A_TP_MIB_TCP_V6IN_ERR_0, sleep_ok);

 t4_tp_mib_read(adap, &st->ofld_no_neigh, 2, A_TP_MIB_OFD_ARP_DROP,
         sleep_ok);
}
