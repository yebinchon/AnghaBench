#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct fsm {int state; TYPE_1__* link; int /*<<< orphan*/  LogLevel; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSM_REQ_TIMER ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (struct fsm*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ST_CLOSED ; 
#define  ST_INITIAL 129 
 int /*<<< orphan*/  ST_REQSENT ; 
#define  ST_STARTING 128 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 

void
FUNC5(struct fsm *fp)
{
  switch (fp->state) {
  case ST_INITIAL:
    FUNC4(fp->LogLevel, "FSM: Using \"%s\" as a transport\n",
              fp->link->name);
    FUNC2(fp, ST_CLOSED);
    break;
  case ST_STARTING:
    FUNC0(fp, FSM_REQ_TIMER);
    FUNC1(fp);
    FUNC2(fp, ST_REQSENT);
    break;
  default:
    FUNC4(fp->LogLevel, "%s: Oops, Up at %s\n",
              fp->link->name, FUNC3(fp->state));
    break;
  }
}