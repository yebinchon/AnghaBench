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
struct pipe {int /*<<< orphan*/  pipe_ino; } ;

/* Variables and functions */
 int /*<<< orphan*/  PIPE_SIZE ; 
 int /*<<< orphan*/  SMALL_PIPE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int amountpipekva ; 
 int maxpipekva ; 
 int /*<<< orphan*/  pipeino_unr ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct pipe *pipe, int backing)
{

	if (backing) {
		/*
		 * Note that these functions can fail if pipe map is exhausted
		 * (as a result of too many pipes created), but we ignore the
		 * error as it is not fatal and could be provoked by
		 * unprivileged users. The only consequence is worse performance
		 * with given pipe.
		 */
		if (amountpipekva > maxpipekva / 2)
			(void)FUNC1(pipe, SMALL_PIPE_SIZE);
		else
			(void)FUNC1(pipe, PIPE_SIZE);
	}

	pipe->pipe_ino = FUNC0(&pipeino_unr);
}