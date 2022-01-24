#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct prompt {int nonewline; int /*<<< orphan*/  owner; } ;
struct TYPE_4__ {char* name; struct prompt* arg; int /*<<< orphan*/  load; int /*<<< orphan*/  func; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECTICKS ; 
 TYPE_1__ bgtimer ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC2 (struct prompt*) ; 
 int /*<<< orphan*/  prompt_TimedContinue ; 
 int /*<<< orphan*/  FUNC3 (struct prompt*) ; 
 scalar_t__ FUNC4 (struct prompt*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void
FUNC7(struct prompt *p)
{
  FUNC6(&bgtimer);
  if (FUNC0() == FUNC4(p)) {
    FUNC3(p);
    p->nonewline = 1;
    FUNC2(p);
    FUNC1(p);
  } else if (!p->owner) {
    bgtimer.func = prompt_TimedContinue;
    bgtimer.name = "prompt bg";
    bgtimer.load = SECTICKS;
    bgtimer.arg = p;
    FUNC5(&bgtimer);
  }
}