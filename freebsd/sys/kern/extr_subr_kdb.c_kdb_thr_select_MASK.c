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
struct thread {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct thread*) ; 
 int /*<<< orphan*/  kdb_thrctx ; 
 struct thread* kdb_thread ; 

int
FUNC1(struct thread *thr)
{
	if (thr == NULL)
		return (EINVAL);
	kdb_thread = thr;
	kdb_thrctx = FUNC0(thr);
	return (0);
}