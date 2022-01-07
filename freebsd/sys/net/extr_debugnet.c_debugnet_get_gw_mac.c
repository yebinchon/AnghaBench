
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char const* octet; } ;
struct debugnet_pcb {scalar_t__ dp_state; TYPE_1__ dp_gw_mac; } ;


 scalar_t__ DN_STATE_HAVE_GW_MAC ;
 int MPASS (int) ;
 scalar_t__ g_debugnet_pcb_inuse ;
 struct debugnet_pcb const g_dnet_pcb ;

const unsigned char *
debugnet_get_gw_mac(const struct debugnet_pcb *pcb)
{
 MPASS(g_debugnet_pcb_inuse && pcb == &g_dnet_pcb &&
     pcb->dp_state >= DN_STATE_HAVE_GW_MAC);
 return (pcb->dp_gw_mac.octet);
}
