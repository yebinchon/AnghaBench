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
typedef  int /*<<< orphan*/  u_int ;
struct taskqueue {int dummy; } ;
struct task {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct taskqueue*) ; 
 int /*<<< orphan*/  FUNC1 (struct taskqueue*) ; 
 int FUNC2 (struct taskqueue*,struct task*,int /*<<< orphan*/ *) ; 

int
FUNC3(struct taskqueue *queue, struct task *task, u_int *pendp)
{
	int error;

	FUNC0(queue);
	error = FUNC2(queue, task, pendp);
	FUNC1(queue);

	return (error);
}