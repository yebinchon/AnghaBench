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
struct thr_param {scalar_t__ rtp; } ;
struct rtprio {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,struct rtprio*,int) ; 
 int /*<<< orphan*/  thr_new_initthr ; 
 int FUNC1 (struct thread*,struct rtprio*,int /*<<< orphan*/ ,struct thr_param*) ; 

int
FUNC2(struct thread *td, struct thr_param *param)
{
	struct rtprio rtp, *rtpp;
	int error;

	rtpp = NULL;
	if (param->rtp != 0) {
		error = FUNC0(param->rtp, &rtp, sizeof(struct rtprio));
		if (error)
			return (error);
		rtpp = &rtp;
	}
	return (FUNC1(td, rtpp, thr_new_initthr, param));
}