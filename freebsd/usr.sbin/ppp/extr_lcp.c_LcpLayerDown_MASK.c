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
struct physical {int /*<<< orphan*/  hdlc; } ;
struct fsm {TYPE_1__* link; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogLCP ; 
 int /*<<< orphan*/  FUNC0 (struct fsm*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct physical* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct physical*) ; 

__attribute__((used)) static void
FUNC6(struct fsm *fp)
{
  /* About to come down */
  struct physical *p = FUNC3(fp->link);

  FUNC4(LogLCP, "%s: LayerDown\n", fp->link->name);
  FUNC1(&p->hdlc);
  FUNC5(p);
  FUNC2(FUNC0(fp), 0);
}