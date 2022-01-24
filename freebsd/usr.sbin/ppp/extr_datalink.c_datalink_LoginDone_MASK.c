#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int tries; scalar_t__ incs; } ;
struct TYPE_14__ {int /*<<< orphan*/  logout; } ;
struct TYPE_15__ {TYPE_2__ script; } ;
struct TYPE_13__ {scalar_t__ run; int /*<<< orphan*/  packetmode; } ;
struct datalink {scalar_t__ state; TYPE_7__* physical; TYPE_4__ dial; TYPE_3__ cfg; int /*<<< orphan*/  chat; TYPE_1__ script; } ;
struct TYPE_17__ {int /*<<< orphan*/  openmode; } ;
struct TYPE_12__ {int /*<<< orphan*/  fsm; TYPE_5__ cfg; } ;
struct TYPE_18__ {TYPE_10__ lcp; int /*<<< orphan*/  ccp; } ;
struct TYPE_19__ {scalar_t__ type; TYPE_6__ link; int /*<<< orphan*/  async; int /*<<< orphan*/  hdlc; } ;

/* Variables and functions */
 scalar_t__ DATALINK_LCP ; 
 scalar_t__ DATALINK_LOGOUT ; 
 scalar_t__ DATALINK_READY ; 
 int /*<<< orphan*/  LogWARN ; 
 scalar_t__ PHYS_DEDICATED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct datalink*) ; 
 int /*<<< orphan*/  FUNC5 (struct datalink*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_10__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_7__*) ; 

__attribute__((used)) static void
FUNC14(struct datalink *dl)
{
  FUNC2(&dl->chat);

  if (!dl->script.packetmode) {
    dl->dial.tries = -1;
    dl->dial.incs = 0;
    FUNC5(dl, DATALINK_READY);
  } else if (!FUNC12(dl->physical)) {
    dl->dial.tries = 0;
    FUNC10(LogWARN, "datalink_LoginDone: Not connected.\n");
    if (dl->script.run) {
      FUNC5(dl, DATALINK_LOGOUT);
      if (!FUNC3(&dl->chat, dl->cfg.script.logout, NULL))
        FUNC10(LogWARN, "Invalid logout script\n");
    } else {
      FUNC13(dl->physical);
      if (dl->physical->type == PHYS_DEDICATED)
        /* force a redial timeout */
        FUNC11(dl->physical);
      FUNC4(dl);
    }
  } else {
    dl->dial.tries = -1;
    dl->dial.incs = 0;

    FUNC8(&dl->physical->hdlc, &dl->physical->link.lcp);
    FUNC0(&dl->physical->async);

    FUNC9(&dl->physical->link.lcp, dl->state == DATALINK_READY ?
              0 : dl->physical->link.lcp.cfg.openmode);
    FUNC1(&dl->physical->link.ccp);

    FUNC5(dl, DATALINK_LCP);
    FUNC7(&dl->physical->link.lcp.fsm);
    FUNC6(&dl->physical->link.lcp.fsm);
  }
}