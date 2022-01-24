#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct cmdargs {int /*<<< orphan*/  prompt; TYPE_9__* cx; } ;
struct TYPE_18__ {TYPE_8__* physical; } ;
struct TYPE_13__ {int load; } ;
struct TYPE_14__ {TYPE_4__ StoppedTimer; } ;
struct TYPE_15__ {TYPE_5__ fsm; } ;
struct TYPE_10__ {int load; } ;
struct TYPE_11__ {TYPE_1__ StoppedTimer; } ;
struct TYPE_12__ {TYPE_2__ fsm; } ;
struct TYPE_16__ {TYPE_6__ ccp; TYPE_3__ lcp; } ;
struct TYPE_17__ {TYPE_7__ link; } ;

/* Variables and functions */
 int SECTICKS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC1(struct cmdargs const *arg)
{
  FUNC0(arg->prompt, " Stopped Timer:  LCP: ");
  if (!arg->cx->physical->link.lcp.fsm.StoppedTimer.load)
    FUNC0(arg->prompt, "Disabled");
  else
    FUNC0(arg->prompt, "%ld secs",
                  arg->cx->physical->link.lcp.fsm.StoppedTimer.load / SECTICKS);

  FUNC0(arg->prompt, ", CCP: ");
  if (!arg->cx->physical->link.ccp.fsm.StoppedTimer.load)
    FUNC0(arg->prompt, "Disabled");
  else
    FUNC0(arg->prompt, "%ld secs",
                  arg->cx->physical->link.ccp.fsm.StoppedTimer.load / SECTICKS);

  FUNC0(arg->prompt, "\n");

  return 0;
}