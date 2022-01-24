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
struct pcm_channel {int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  intr_cv; } ;

/* Variables and functions */
 int CHN_F_DEAD ; 
 int CHN_F_SLEEPING ; 
 int /*<<< orphan*/  FUNC0 (struct pcm_channel*) ; 
 int EINVAL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(struct pcm_channel *c, int timeout)
{
	int ret;

	FUNC0(c);

	if (c->flags & CHN_F_DEAD)
		return (EINVAL);

	c->flags |= CHN_F_SLEEPING;
	ret = FUNC1(&c->intr_cv, c->lock, timeout);
	c->flags &= ~CHN_F_SLEEPING;

	return ((c->flags & CHN_F_DEAD) ? EINVAL : ret);
}