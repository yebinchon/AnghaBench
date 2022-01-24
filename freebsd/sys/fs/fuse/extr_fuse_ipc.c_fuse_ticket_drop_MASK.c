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
struct fuse_ticket {int /*<<< orphan*/  tk_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fuse_ticket*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

int
FUNC2(struct fuse_ticket *ftick)
{
	int die;

	die = FUNC1(&ftick->tk_refcount);
	if (die)
		FUNC0(ftick);

	return die;
}