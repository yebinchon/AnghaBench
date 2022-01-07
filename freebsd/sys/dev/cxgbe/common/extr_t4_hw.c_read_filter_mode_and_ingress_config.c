
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u64 ;
struct tp_params {int hash_filter_mask; void* frag_shift; void* matchtype_shift; void* macmatch_shift; void* ethertype_shift; void* protocol_shift; void* tos_shift; void* vlan_shift; void* vnic_shift; void* port_shift; void* fcoe_shift; int ingress_config; int vlan_pri_map; } ;
struct TYPE_2__ {struct tp_params tp; } ;
struct adapter {TYPE_1__ params; } ;


 int A_TP_INGRESS_CONFIG ;
 int A_TP_VLAN_PRI_MAP ;
 scalar_t__ CHELSIO_T4 ;
 int F_ETHERTYPE ;
 int F_FCOE ;
 int F_FRAGMENTATION ;
 int F_MACMATCH ;
 int F_MPSHITTYPE ;
 int F_PORT ;
 int F_PROTOCOL ;
 int F_TOS ;
 int F_VLAN ;
 int F_VNIC_ID ;
 int LE_HASH_MASK_GEN_IPV4T5 (int) ;
 scalar_t__ chip_id (struct adapter*) ;
 void* t4_filter_field_shift (struct adapter*,int ) ;
 int t4_read_reg (struct adapter*,int ) ;
 int t4_tp_pio_read (struct adapter*,int *,int,int ,int) ;

__attribute__((used)) static void read_filter_mode_and_ingress_config(struct adapter *adap,
    bool sleep_ok)
{
 uint32_t v;
 struct tp_params *tpp = &adap->params.tp;

 t4_tp_pio_read(adap, &tpp->vlan_pri_map, 1, A_TP_VLAN_PRI_MAP,
     sleep_ok);
 t4_tp_pio_read(adap, &tpp->ingress_config, 1, A_TP_INGRESS_CONFIG,
     sleep_ok);






 tpp->fcoe_shift = t4_filter_field_shift(adap, F_FCOE);
 tpp->port_shift = t4_filter_field_shift(adap, F_PORT);
 tpp->vnic_shift = t4_filter_field_shift(adap, F_VNIC_ID);
 tpp->vlan_shift = t4_filter_field_shift(adap, F_VLAN);
 tpp->tos_shift = t4_filter_field_shift(adap, F_TOS);
 tpp->protocol_shift = t4_filter_field_shift(adap, F_PROTOCOL);
 tpp->ethertype_shift = t4_filter_field_shift(adap, F_ETHERTYPE);
 tpp->macmatch_shift = t4_filter_field_shift(adap, F_MACMATCH);
 tpp->matchtype_shift = t4_filter_field_shift(adap, F_MPSHITTYPE);
 tpp->frag_shift = t4_filter_field_shift(adap, F_FRAGMENTATION);

 if (chip_id(adap) > CHELSIO_T4) {
  v = t4_read_reg(adap, LE_HASH_MASK_GEN_IPV4T5(3));
  adap->params.tp.hash_filter_mask = v;
  v = t4_read_reg(adap, LE_HASH_MASK_GEN_IPV4T5(4));
  adap->params.tp.hash_filter_mask |= (u64)v << 32;
 }
}
