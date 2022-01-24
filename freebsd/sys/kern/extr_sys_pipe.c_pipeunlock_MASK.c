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
struct pipe {int pipe_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int PIPE_LOCKFL ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*,int /*<<< orphan*/ ) ; 
 int PIPE_LWANT ; 
 int /*<<< orphan*/  FUNC2 (struct pipe*) ; 

__attribute__((used)) static __inline void
FUNC3(struct pipe *cpipe)
{

	FUNC1(cpipe, MA_OWNED);
	FUNC0(cpipe->pipe_state & PIPE_LOCKFL,
		("Unlocked pipe passed to pipeunlock"));
	cpipe->pipe_state &= ~PIPE_LOCKFL;
	if (cpipe->pipe_state & PIPE_LWANT) {
		cpipe->pipe_state &= ~PIPE_LWANT;
		FUNC2(cpipe);
	}
}