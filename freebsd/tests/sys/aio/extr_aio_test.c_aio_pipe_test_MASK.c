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
struct sigevent {int dummy; } ;
struct aio_context {int dummy; } ;
typedef  int /*<<< orphan*/  completion ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PIPE_LEN ; 
 int /*<<< orphan*/  FUNC3 (struct aio_context*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC5 (struct aio_context*,int /*<<< orphan*/ ,struct sigevent*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(completion comp, struct sigevent *sev)
{
	struct aio_context ac;
	int pipes[2];

	FUNC0("aio");
	FUNC2();

	FUNC1(FUNC7(pipes) != -1,
	    "pipe failed: %s", FUNC8(errno));

	FUNC3(&ac, pipes[0], pipes[1], PIPE_LEN);
	FUNC5(&ac, comp, sev);
	FUNC4(&ac, comp, sev);

	FUNC6(pipes[0]);
	FUNC6(pipes[1]);
}