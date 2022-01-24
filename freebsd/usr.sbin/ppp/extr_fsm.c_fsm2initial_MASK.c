#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct fsm {scalar_t__ state; int /*<<< orphan*/  StoppedTimer; int /*<<< orphan*/  OpenTimer; int /*<<< orphan*/  FsmTimer; } ;

/* Variables and functions */
 scalar_t__ ST_INITIAL ; 
 scalar_t__ ST_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3(struct fsm *fp)
{
  FUNC2(&fp->FsmTimer);
  FUNC2(&fp->OpenTimer);
  FUNC2(&fp->StoppedTimer);
  if (fp->state == ST_STOPPED)
    FUNC0(fp);
  if (fp->state > ST_INITIAL)
    FUNC1(fp);
  if (fp->state > ST_INITIAL)
    FUNC0(fp);
}