
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct lcp {scalar_t__ auth_ineed; scalar_t__ want_auth; scalar_t__ auth_iwait; scalar_t__ his_auth; int want_authtype; int his_authtype; } ;
struct fsm {scalar_t__ proto; } ;
struct TYPE_6__ {int auth; } ;
struct datalink {TYPE_5__* physical; TYPE_2__* parent; TYPE_1__ chap; int pap; int name; int bundle; } ;
struct TYPE_8__ {int fsm; } ;
struct TYPE_9__ {TYPE_3__ ccp; struct lcp lcp; } ;
struct TYPE_10__ {TYPE_4__ link; } ;
struct TYPE_7__ {int object; int (* LayerUp ) (int ,int *) ;} ;


 int Auth2Nam (scalar_t__,int ) ;
 int LogPHASE ;
 int PHASE_AUTHENTICATE ;
 scalar_t__ PHASE_NETWORK ;
 scalar_t__ PROTO_CCP ;
 scalar_t__ PROTO_CHAP ;
 scalar_t__ PROTO_LCP ;
 scalar_t__ PROTO_PAP ;
 int auth_StartReq (int *) ;
 int bundle_NewPhase (int ,int ) ;
 scalar_t__ bundle_Phase (int ) ;
 int datalink_AuthOk (struct datalink*) ;
 int datalink_GotAuthname (struct datalink*,char*) ;
 int log_Printf (int ,char*,int ,int ,int ) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void
datalink_LayerUp(void *v, struct fsm *fp)
{

  struct datalink *dl = (struct datalink *)v;
  struct lcp *lcp = &dl->physical->link.lcp;

  if (fp->proto == PROTO_LCP) {
    datalink_GotAuthname(dl, "");
    lcp->auth_ineed = lcp->want_auth;
    lcp->auth_iwait = lcp->his_auth;
    if (lcp->his_auth || lcp->want_auth) {
      if (bundle_Phase(dl->bundle) != PHASE_NETWORK)
        bundle_NewPhase(dl->bundle, PHASE_AUTHENTICATE);
      log_Printf(LogPHASE, "%s: his = %s, mine = %s\n", dl->name,
                Auth2Nam(lcp->his_auth, lcp->his_authtype),
                Auth2Nam(lcp->want_auth, lcp->want_authtype));
      if (lcp->his_auth == PROTO_PAP)
        auth_StartReq(&dl->pap);
      if (lcp->want_auth == PROTO_CHAP)
        auth_StartReq(&dl->chap.auth);
    } else
      datalink_AuthOk(dl);
  } else if (fp->proto == PROTO_CCP)
    (*dl->parent->LayerUp)(dl->parent->object, &dl->physical->link.ccp.fsm);
}
