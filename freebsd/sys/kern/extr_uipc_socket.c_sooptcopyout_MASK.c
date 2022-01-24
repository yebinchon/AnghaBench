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
struct sockopt {size_t sopt_valsize; int /*<<< orphan*/ * sopt_val; int /*<<< orphan*/ * sopt_td; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void const*,int /*<<< orphan*/ *,size_t) ; 
 int FUNC1 (void const*,int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC2 (size_t,size_t) ; 

int
FUNC3(struct sockopt *sopt, const void *buf, size_t len)
{
	int	error;
	size_t	valsize;

	error = 0;

	/*
	 * Documented get behavior is that we always return a value, possibly
	 * truncated to fit in the user's buffer.  Traditional behavior is
	 * that we always tell the user precisely how much we copied, rather
	 * than something useful like the total amount we had available for
	 * her.  Note that this interface is not idempotent; the entire
	 * answer must be generated ahead of time.
	 */
	valsize = FUNC2(len, sopt->sopt_valsize);
	sopt->sopt_valsize = valsize;
	if (sopt->sopt_val != NULL) {
		if (sopt->sopt_td != NULL)
			error = FUNC1(buf, sopt->sopt_val, valsize);
		else
			FUNC0(buf, sopt->sopt_val, valsize);
	}
	return (error);
}