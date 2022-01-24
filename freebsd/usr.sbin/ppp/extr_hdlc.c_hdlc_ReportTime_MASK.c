#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ unknownproto; scalar_t__ badcommand; scalar_t__ badaddr; scalar_t__ badfcs; } ;
struct TYPE_10__ {TYPE_3__* owner; } ;
struct hdlc {int /*<<< orphan*/  ReportTimer; TYPE_5__ stats; TYPE_5__ laststats; TYPE_4__ lqm; } ;
struct TYPE_8__ {TYPE_1__* link; } ;
struct TYPE_9__ {TYPE_2__ fsm; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogPHASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *v)
{
  /* Moan about HDLC errors */
  struct hdlc *hdlc = (struct hdlc *)v;

  FUNC3(&hdlc->ReportTimer);

  if (FUNC1(&hdlc->laststats, &hdlc->stats, sizeof hdlc->stats)) {
    FUNC0(LogPHASE,
              "%s: HDLC errors -> FCS: %u, ADDR: %u, COMD: %u, PROTO: %u\n",
              hdlc->lqm.owner->fsm.link->name,
	      hdlc->stats.badfcs - hdlc->laststats.badfcs,
              hdlc->stats.badaddr - hdlc->laststats.badaddr,
              hdlc->stats.badcommand - hdlc->laststats.badcommand,
              hdlc->stats.unknownproto - hdlc->laststats.unknownproto);
    hdlc->laststats = hdlc->stats;
  }

  FUNC2(&hdlc->ReportTimer);
}