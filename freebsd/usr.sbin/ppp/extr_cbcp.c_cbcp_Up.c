
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ opmask; } ;
struct lcp {TYPE_7__ want_callback; } ;
struct TYPE_16__ {int delay; char* phone; int restart; void* type; } ;
struct cbcp {TYPE_8__ fsm; TYPE_6__* p; } ;
struct TYPE_9__ {struct lcp lcp; } ;
struct TYPE_14__ {TYPE_5__* dl; TYPE_1__ link; } ;
struct TYPE_11__ {int delay; int phone; } ;
struct TYPE_12__ {TYPE_3__ cbcp; } ;
struct TYPE_10__ {char* authname; } ;
struct TYPE_13__ {TYPE_4__ cfg; TYPE_2__ peer; } ;


 void* CBCP_CLIENTNUM ;
 void* CBCP_LISTNUM ;
 void* CBCP_NONUM ;
 void* CBCP_SERVERNUM ;
 int CBCP_STOPPED ;
 int DEF_FSMTRIES ;
 int auth_SetPhoneList (char*,char*,int) ;
 int cbcp_NewPhase (struct cbcp*,int ) ;
 int cbcp_SendReq (struct cbcp*) ;
 int cbcp_StartTimer (struct cbcp*,int) ;
 scalar_t__ strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strncpy (char*,int ,int) ;

void
cbcp_Up(struct cbcp *cbcp)
{
  struct lcp *lcp = &cbcp->p->link.lcp;

  cbcp->fsm.delay = cbcp->p->dl->cfg.cbcp.delay;
  if (*cbcp->p->dl->peer.authname == '\0' ||
      !auth_SetPhoneList(cbcp->p->dl->peer.authname, cbcp->fsm.phone,
                         sizeof cbcp->fsm.phone)) {
    strncpy(cbcp->fsm.phone, cbcp->p->dl->cfg.cbcp.phone,
            sizeof cbcp->fsm.phone - 1);
    cbcp->fsm.phone[sizeof cbcp->fsm.phone - 1] = '\0';
  }

  if (lcp->want_callback.opmask) {
    if (*cbcp->fsm.phone == '\0')
      cbcp->fsm.type = CBCP_NONUM;
    else if (!strcmp(cbcp->fsm.phone, "*")) {
      cbcp->fsm.type = CBCP_SERVERNUM;
      *cbcp->fsm.phone = '\0';
    } else
      cbcp->fsm.type = CBCP_CLIENTNUM;
    cbcp_NewPhase(cbcp, CBCP_STOPPED);
    cbcp_StartTimer(cbcp, cbcp->fsm.delay * DEF_FSMTRIES);
  } else {
    if (*cbcp->fsm.phone == '\0')
      cbcp->fsm.type = CBCP_NONUM;
    else if (!strcmp(cbcp->fsm.phone, "*")) {
      cbcp->fsm.type = CBCP_CLIENTNUM;
      *cbcp->fsm.phone = '\0';
    } else if (strchr(cbcp->fsm.phone, ','))
      cbcp->fsm.type = CBCP_LISTNUM;
    else
      cbcp->fsm.type = CBCP_SERVERNUM;
    cbcp->fsm.restart = DEF_FSMTRIES;
    cbcp_SendReq(cbcp);
  }
}
