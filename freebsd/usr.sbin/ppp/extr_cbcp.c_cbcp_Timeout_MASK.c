#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int state; scalar_t__ restart; int /*<<< orphan*/  timer; } ;
struct cbcp {TYPE_2__* p; TYPE_1__ fsm; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_3__* dl; } ;

/* Variables and functions */
#define  CBCP_ACKSENT 132 
#define  CBCP_CLOSED 131 
#define  CBCP_REQSENT 130 
#define  CBCP_RESPSENT 129 
#define  CBCP_STOPPED 128 
 int /*<<< orphan*/  LogCBCP ; 
 int /*<<< orphan*/  FUNC0 (struct cbcp*) ; 
 int /*<<< orphan*/  FUNC1 (struct cbcp*) ; 
 int /*<<< orphan*/  FUNC2 (struct cbcp*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(void *v)
{
  struct cbcp *cbcp = (struct cbcp *)v;

  FUNC5(&cbcp->fsm.timer);
  if (cbcp->fsm.restart) {
    switch (cbcp->fsm.state) {
      case CBCP_CLOSED:
      case CBCP_STOPPED:
        FUNC4(LogCBCP, "%s: Urk - unexpected CBCP timeout !\n",
                   cbcp->p->dl->name);
        break;

      case CBCP_REQSENT:
        FUNC1(cbcp);
        break;
      case CBCP_RESPSENT:
        FUNC2(cbcp);
        break;
      case CBCP_ACKSENT:
        FUNC0(cbcp);
        break;
    }
  } else {
    const char *missed;

    switch (cbcp->fsm.state) {
      case CBCP_STOPPED:
        missed = "REQ";
        break;
      case CBCP_REQSENT:
        missed = "RESPONSE";
        break;
      case CBCP_RESPSENT:
        missed = "ACK";
        break;
      case CBCP_ACKSENT:
        missed = "Terminate REQ";
        break;
      default:
        FUNC4(LogCBCP, "%s: Urk - unexpected CBCP timeout !\n",
                   cbcp->p->dl->name);
        missed = NULL;
        break;
    }
    if (missed)
      FUNC4(LogCBCP, "%s: Timeout waiting for peer %s\n",
                 cbcp->p->dl->name, missed);
    FUNC3(cbcp->p->dl);
  }
}