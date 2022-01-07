
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int opts; int timeout; int max_configure; } ;
struct TYPE_6__ {scalar_t__ proto; } ;
struct TYPE_7__ {scalar_t__ proto; } ;
struct sppp {TYPE_3__ lcp; int pap_my_to_ch; TYPE_1__ myauth; int * rst_counter; TYPE_2__ hisauth; } ;
struct TYPE_9__ {int (* scr ) (struct sppp*) ;} ;


 size_t IDX_PAP ;
 int LCP_OPT_AUTH_PROTO ;
 scalar_t__ PPP_PAP ;
 int STATE_REQ_SENT ;
 int callout_reset (int *,int ,int ,void*) ;
 TYPE_4__ pap ;
 int sppp_cp_change_state (TYPE_4__*,struct sppp*,int ) ;
 int sppp_pap_my_TO ;
 int stub1 (struct sppp*) ;

__attribute__((used)) static void
sppp_pap_open(struct sppp *sp)
{
 if (sp->hisauth.proto == PPP_PAP &&
     (sp->lcp.opts & (1 << LCP_OPT_AUTH_PROTO)) != 0) {

  sp->rst_counter[IDX_PAP] = sp->lcp.max_configure;
  sppp_cp_change_state(&pap, sp, STATE_REQ_SENT);
 }
 if (sp->myauth.proto == PPP_PAP) {

  pap.scr(sp);
  callout_reset(&sp->pap_my_to_ch, sp->lcp.timeout,
         sppp_pap_my_TO, (void *)sp);
 }
}
