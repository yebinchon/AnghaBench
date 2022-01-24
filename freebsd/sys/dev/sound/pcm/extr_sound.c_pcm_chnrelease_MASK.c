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
struct pcm_channel {int pid; int /*<<< orphan*/  comm; int /*<<< orphan*/  flags; int /*<<< orphan*/  parentsnddev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHN_COMM_UNUSED ; 
 int /*<<< orphan*/  CHN_F_BUSY ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct pcm_channel*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int
FUNC4(struct pcm_channel *c)
{
	FUNC2(c->parentsnddev);
	FUNC0(c);

	c->flags &= ~CHN_F_BUSY;
	c->pid = -1;
	FUNC3(c->comm, CHN_COMM_UNUSED, sizeof(c->comm));
	FUNC1(c);

	return (0);
}