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
struct rbdr {int /*<<< orphan*/  rbdr_task; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC0 (struct rbdr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_thread ; 

__attribute__((used)) static void
FUNC2(void *arg, int pending)
{
	struct rbdr *rbdr;
	int err;

	rbdr = (struct rbdr *)arg;

	err = FUNC0(rbdr, M_NOWAIT);
	if (err != 0) {
		/*
		 * Schedule another, sleepable kernel thread
		 * that will for sure refill the buffers.
		 */
		FUNC1(taskqueue_thread, &rbdr->rbdr_task);
	}
}