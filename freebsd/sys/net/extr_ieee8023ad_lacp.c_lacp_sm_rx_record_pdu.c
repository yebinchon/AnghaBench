
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int lip_state; } ;
struct TYPE_5__ {int lip_state; } ;
struct lacpdu {TYPE_3__ ldu_partner; TYPE_2__ ldu_actor; } ;
struct lacp_port {int lp_state; TYPE_2__ lp_partner; TYPE_1__* lp_lsc; int lp_actor; } ;
typedef int buf ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ lsc_strict_mode; } ;


 int LACP_DPRINTF (struct lacp_port*) ;
 int LACP_STATESTR_MAX ;
 int LACP_STATE_ACTIVITY ;
 int LACP_STATE_AGGREGATION ;
 int LACP_STATE_DEFAULTED ;
 scalar_t__ LACP_STATE_EQ (int,int,int) ;
 int LACP_STATE_SYNC ;
 int LACP_TRACE (struct lacp_port*) ;
 int lacp_compare_peerinfo (int *,TYPE_3__*) ;
 int lacp_format_state (int,char*,int) ;
 int lacp_sm_ptx_update_timeout (struct lacp_port*,int) ;

__attribute__((used)) static void
lacp_sm_rx_record_pdu(struct lacp_port *lp, const struct lacpdu *du)
{
 boolean_t active;
 uint8_t oldpstate;
 char buf[LACP_STATESTR_MAX+1];

 LACP_TRACE(lp);

 oldpstate = lp->lp_partner.lip_state;

 active = (du->ldu_actor.lip_state & LACP_STATE_ACTIVITY)
     || ((lp->lp_state & LACP_STATE_ACTIVITY) &&
     (du->ldu_partner.lip_state & LACP_STATE_ACTIVITY));

 lp->lp_partner = du->ldu_actor;
 if (active &&
     ((LACP_STATE_EQ(lp->lp_state, du->ldu_partner.lip_state,
     LACP_STATE_AGGREGATION) &&
     !lacp_compare_peerinfo(&lp->lp_actor, &du->ldu_partner))
     || (du->ldu_partner.lip_state & LACP_STATE_AGGREGATION) == 0)) {







  if (lp->lp_lsc->lsc_strict_mode)
   lp->lp_partner.lip_state |= LACP_STATE_SYNC;
 } else {
  lp->lp_partner.lip_state &= ~LACP_STATE_SYNC;
 }

 lp->lp_state &= ~LACP_STATE_DEFAULTED;

 if (oldpstate != lp->lp_partner.lip_state) {
  LACP_DPRINTF((lp, "old pstate %s\n",
      lacp_format_state(oldpstate, buf, sizeof(buf))));
  LACP_DPRINTF((lp, "new pstate %s\n",
      lacp_format_state(lp->lp_partner.lip_state, buf,
      sizeof(buf))));
 }

 lacp_sm_ptx_update_timeout(lp, oldpstate);
}
