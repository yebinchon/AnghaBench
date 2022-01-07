
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_8__ ;
typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;
typedef struct TYPE_15__ TYPE_10__ ;


struct TYPE_17__ {int authname; } ;
struct datalink {TYPE_4__* physical; TYPE_2__* parent; TYPE_11__* bundle; TYPE_1__ peer; int name; } ;
struct TYPE_24__ {int open_mode; } ;
struct TYPE_23__ {TYPE_1__ peer; } ;
struct TYPE_19__ {int fsm; scalar_t__ his_mrru; scalar_t__ want_mrru; } ;
struct TYPE_15__ {TYPE_8__ fsm; } ;
struct TYPE_22__ {TYPE_3__ lcp; TYPE_10__ ccp; } ;
struct TYPE_21__ {TYPE_7__ mp; } ;
struct TYPE_20__ {TYPE_6__ link; } ;
struct TYPE_18__ {int object; int (* LayerUp ) (int ,int *) ;} ;
struct TYPE_16__ {TYPE_5__ ncp; } ;


 int DATALINK_OPEN ;
 int LogPHASE ;




 int OPEN_PASSIVE ;
 scalar_t__ PHASE_NETWORK ;
 int auth_Select (TYPE_11__*,int ) ;
 int bundle_CalculateBandwidth (TYPE_11__*) ;
 int bundle_NewPhase (TYPE_11__*,scalar_t__) ;
 scalar_t__ bundle_Phase (TYPE_11__*) ;
 int ccp_SetOpenMode (TYPE_10__*) ;
 int datalink_AuthNotOk (struct datalink*) ;
 int datalink_NewState (struct datalink*,int ) ;
 int fsm_Open (TYPE_8__*) ;
 int fsm_Up (TYPE_8__*) ;
 int log_Printf (int ,char*,int ) ;
 int mp_Up (TYPE_7__*,struct datalink*) ;
 int ncp_SetLink (TYPE_5__*,TYPE_6__*) ;
 int stub1 (int ,int *) ;
 int stub2 (int ,int *) ;

void
datalink_NCPUp(struct datalink *dl)
{
  int ccpok = ccp_SetOpenMode(&dl->physical->link.ccp);

  if (dl->physical->link.lcp.want_mrru && dl->physical->link.lcp.his_mrru) {

    switch (mp_Up(&dl->bundle->ncp.mp, dl)) {
      case 129:

        return;
      case 128:

        auth_Select(dl->bundle, dl->peer.authname);
        bundle_CalculateBandwidth(dl->bundle);

      case 131:

        dl->physical->link.ccp.fsm.open_mode = OPEN_PASSIVE;
        bundle_CalculateBandwidth(dl->bundle);
        break;
      case 130:
        datalink_AuthNotOk(dl);
        return;
    }
  } else if (bundle_Phase(dl->bundle) == PHASE_NETWORK) {
    log_Printf(LogPHASE, "%s: Already in NETWORK phase\n", dl->name);
    datalink_NewState(dl, DATALINK_OPEN);
    bundle_CalculateBandwidth(dl->bundle);
    (*dl->parent->LayerUp)(dl->parent->object, &dl->physical->link.lcp.fsm);
    return;
  } else {
    dl->bundle->ncp.mp.peer = dl->peer;
    ncp_SetLink(&dl->bundle->ncp, &dl->physical->link);
    auth_Select(dl->bundle, dl->peer.authname);
  }

  if (ccpok) {
    fsm_Up(&dl->physical->link.ccp.fsm);
    fsm_Open(&dl->physical->link.ccp.fsm);
  }
  datalink_NewState(dl, DATALINK_OPEN);
  bundle_NewPhase(dl->bundle, PHASE_NETWORK);
  (*dl->parent->LayerUp)(dl->parent->object, &dl->physical->link.lcp.fsm);
}
