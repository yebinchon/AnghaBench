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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int tv_usec; } ;
struct timespec {int dummy; } ;
typedef  enum uio_seg { ____Placeholder_uio_seg } uio_seg ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct timeval const*,struct timespec*) ; 
 int UIO_SYSSPACE ; 
 int FUNC1 (struct timeval const*,struct timeval*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct timespec*) ; 

__attribute__((used)) static int
FUNC3(const struct timeval *usrtvp, enum uio_seg tvpseg,
    struct timespec *tsp)
{
	struct timeval tv[2];
	const struct timeval *tvp;
	int error;

	if (usrtvp == NULL) {
		FUNC2(&tsp[0]);
		tsp[1] = tsp[0];
	} else {
		if (tvpseg == UIO_SYSSPACE) {
			tvp = usrtvp;
		} else {
			if ((error = FUNC1(usrtvp, tv, sizeof(tv))) != 0)
				return (error);
			tvp = tv;
		}

		if (tvp[0].tv_usec < 0 || tvp[0].tv_usec >= 1000000 ||
		    tvp[1].tv_usec < 0 || tvp[1].tv_usec >= 1000000)
			return (EINVAL);
		FUNC0(&tvp[0], &tsp[0]);
		FUNC0(&tvp[1], &tsp[1]);
	}
	return (0);
}