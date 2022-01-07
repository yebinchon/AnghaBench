
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int lip_state; } ;
struct lacp_port {int lp_state; TYPE_2__ lp_partner; TYPE_1__* lp_lsc; } ;
struct TYPE_4__ {scalar_t__ lsc_strict_mode; } ;


 int LACP_STATE_DEFAULTED ;
 int LACP_TRACE (struct lacp_port*) ;
 TYPE_2__ lacp_partner_admin_optimistic ;
 TYPE_2__ lacp_partner_admin_strict ;
 int lacp_sm_ptx_update_timeout (struct lacp_port*,int ) ;

__attribute__((used)) static void
lacp_sm_rx_record_default(struct lacp_port *lp)
{
 uint8_t oldpstate;

 LACP_TRACE(lp);

 oldpstate = lp->lp_partner.lip_state;
 if (lp->lp_lsc->lsc_strict_mode)
  lp->lp_partner = lacp_partner_admin_strict;
 else
  lp->lp_partner = lacp_partner_admin_optimistic;
 lp->lp_state |= LACP_STATE_DEFAULTED;
 lacp_sm_ptx_update_timeout(lp, oldpstate);
}
