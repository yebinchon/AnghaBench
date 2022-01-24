#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ opmask; } ;
struct lcp {TYPE_7__ want_callback; } ;
struct TYPE_16__ {int delay; char* phone; int restart; void* type; } ;
struct cbcp {TYPE_8__ fsm; TYPE_6__* p; } ;
struct TYPE_9__ {struct lcp lcp; } ;
struct TYPE_14__ {TYPE_5__* dl; TYPE_1__ link; } ;
struct TYPE_11__ {int delay; int /*<<< orphan*/  phone; } ;
struct TYPE_12__ {TYPE_3__ cbcp; } ;
struct TYPE_10__ {char* authname; } ;
struct TYPE_13__ {TYPE_4__ cfg; TYPE_2__ peer; } ;

/* Variables and functions */
 void* CBCP_CLIENTNUM ; 
 void* CBCP_LISTNUM ; 
 void* CBCP_NONUM ; 
 void* CBCP_SERVERNUM ; 
 int /*<<< orphan*/  CBCP_STOPPED ; 
 int DEF_FSMTRIES ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct cbcp*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cbcp*) ; 
 int /*<<< orphan*/  FUNC3 (struct cbcp*,int) ; 
 scalar_t__ FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 

void
FUNC7(struct cbcp *cbcp)
{
  struct lcp *lcp = &cbcp->p->link.lcp;

  cbcp->fsm.delay = cbcp->p->dl->cfg.cbcp.delay;
  if (*cbcp->p->dl->peer.authname == '\0' ||
      !FUNC0(cbcp->p->dl->peer.authname, cbcp->fsm.phone,
                         sizeof cbcp->fsm.phone)) {
    FUNC6(cbcp->fsm.phone, cbcp->p->dl->cfg.cbcp.phone,
            sizeof cbcp->fsm.phone - 1);
    cbcp->fsm.phone[sizeof cbcp->fsm.phone - 1] = '\0';
  }

  if (lcp->want_callback.opmask) {
    if (*cbcp->fsm.phone == '\0')
      cbcp->fsm.type = CBCP_NONUM;
    else if (!FUNC5(cbcp->fsm.phone, "*")) {
      cbcp->fsm.type = CBCP_SERVERNUM;
      *cbcp->fsm.phone = '\0';
    } else
      cbcp->fsm.type = CBCP_CLIENTNUM;
    FUNC1(cbcp, CBCP_STOPPED);		/* Wait for a REQ */
    FUNC3(cbcp, cbcp->fsm.delay * DEF_FSMTRIES);
  } else {
    if (*cbcp->fsm.phone == '\0')
      cbcp->fsm.type = CBCP_NONUM;
    else if (!FUNC5(cbcp->fsm.phone, "*")) {
      cbcp->fsm.type = CBCP_CLIENTNUM;
      *cbcp->fsm.phone = '\0';
    } else if (FUNC4(cbcp->fsm.phone, ','))
      cbcp->fsm.type = CBCP_LISTNUM;
    else
      cbcp->fsm.type = CBCP_SERVERNUM;
    cbcp->fsm.restart = DEF_FSMTRIES;
    FUNC2(cbcp);
  }
}