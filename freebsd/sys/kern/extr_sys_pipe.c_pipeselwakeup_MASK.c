#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct pipe {int pipe_state; TYPE_1__ pipe_sel; scalar_t__ pipe_sigio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PIPE_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*,int /*<<< orphan*/ ) ; 
 int PIPE_SEL ; 
 int /*<<< orphan*/  PSOCK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  SIGIO ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct pipe *cpipe)
{

	FUNC1(cpipe, MA_OWNED);
	if (cpipe->pipe_state & PIPE_SEL) {
		FUNC4(&cpipe->pipe_sel, PSOCK);
		if (!FUNC2(&cpipe->pipe_sel))
			cpipe->pipe_state &= ~PIPE_SEL;
	}
	if ((cpipe->pipe_state & PIPE_ASYNC) && cpipe->pipe_sigio)
		FUNC3(&cpipe->pipe_sigio, SIGIO, 0);
	FUNC0(&cpipe->pipe_sel.si_note, 0);
}