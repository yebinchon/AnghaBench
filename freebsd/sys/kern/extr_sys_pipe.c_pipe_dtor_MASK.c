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
struct pipe {int pipe_state; int /*<<< orphan*/  pipe_sigio; struct pipe* pipe_peer; } ;

/* Variables and functions */
 int PIPE_NAMED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*) ; 

void
FUNC2(struct pipe *dpipe)
{
	struct pipe *peer;

	peer = (dpipe->pipe_state & PIPE_NAMED) != 0 ? dpipe->pipe_peer : NULL;
	FUNC0(&dpipe->pipe_sigio);
	FUNC1(dpipe);
	if (peer != NULL) {
		FUNC0(&peer->pipe_sigio);
		FUNC1(peer);
	}
}