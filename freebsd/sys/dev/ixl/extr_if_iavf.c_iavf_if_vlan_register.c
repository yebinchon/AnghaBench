
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ixl_vsi {int num_vlans; } ;
struct iavf_vlan_filter {int vlan; int flags; } ;
struct iavf_sc {int vlan_filters; struct ixl_vsi vsi; } ;
typedef int if_ctx_t ;


 int IAVF_FLAG_AQ_ADD_VLAN_FILTER ;
 int IXL_FILTER_ADD ;
 int M_IAVF ;
 int M_WAITOK ;
 int M_ZERO ;
 int SLIST_INSERT_HEAD (int ,struct iavf_vlan_filter*,int ) ;
 int iavf_send_vc_msg (struct iavf_sc*,int ) ;
 struct iavf_sc* iflib_get_softc (int ) ;
 struct iavf_vlan_filter* malloc (int,int ,int) ;
 int next ;

__attribute__((used)) static void
iavf_if_vlan_register(if_ctx_t ctx, u16 vtag)
{
 struct iavf_sc *sc = iflib_get_softc(ctx);
 struct ixl_vsi *vsi = &sc->vsi;
 struct iavf_vlan_filter *v;

 if ((vtag == 0) || (vtag > 4095))
  return;

 ++vsi->num_vlans;
 v = malloc(sizeof(struct iavf_vlan_filter), M_IAVF, M_WAITOK | M_ZERO);
 SLIST_INSERT_HEAD(sc->vlan_filters, v, next);
 v->vlan = vtag;
 v->flags = IXL_FILTER_ADD;

 iavf_send_vc_msg(sc, IAVF_FLAG_AQ_ADD_VLAN_FILTER);
}
