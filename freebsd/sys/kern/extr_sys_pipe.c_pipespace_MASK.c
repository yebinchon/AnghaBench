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
 int PIPE_LOCKFL ; 
 int FUNC1 (struct pipe*,int) ; 

__attribute__((used)) static int
FUNC2(struct pipe *cpipe, int size)
{

	FUNC0(cpipe->pipe_state & PIPE_LOCKFL,
		("Unlocked pipe passed to pipespace"));
	return (FUNC1(cpipe, size));
}