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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int	/* XXX: arbitrary ordering for non-contiguous masks */
FUNC1(void *m_arg, void *n_arg)
{
	u_char *mp = m_arg, *np = n_arg, *lim;

	if (FUNC0(mp) > FUNC0(np))
		return (1);  /* not really, but need to check longer one first */
	if (FUNC0(mp) == FUNC0(np))
		for (lim = mp + FUNC0(mp); mp < lim;)
			if (*mp++ > *np++)
				return (1);
	return (0);
}