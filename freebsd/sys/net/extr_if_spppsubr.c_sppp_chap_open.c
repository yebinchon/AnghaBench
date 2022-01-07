
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int opts; int max_configure; } ;
struct TYPE_5__ {scalar_t__ proto; } ;
struct sppp {TYPE_2__ lcp; int * rst_counter; TYPE_1__ myauth; } ;
struct TYPE_7__ {int (* scr ) (struct sppp*) ;} ;


 size_t IDX_CHAP ;
 int LCP_OPT_AUTH_PROTO ;
 scalar_t__ PPP_CHAP ;
 int STATE_REQ_SENT ;
 TYPE_3__ chap ;
 int sppp_cp_change_state (TYPE_3__*,struct sppp*,int ) ;
 int stub1 (struct sppp*) ;

__attribute__((used)) static void
sppp_chap_open(struct sppp *sp)
{
 if (sp->myauth.proto == PPP_CHAP &&
     (sp->lcp.opts & (1 << LCP_OPT_AUTH_PROTO)) != 0) {

  chap.scr(sp);
  sp->rst_counter[IDX_CHAP] = sp->lcp.max_configure;
  sppp_cp_change_state(&chap, sp, STATE_REQ_SENT);
 }

}
