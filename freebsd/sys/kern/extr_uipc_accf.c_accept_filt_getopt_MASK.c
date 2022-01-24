#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sockopt {int dummy; } ;
struct socket {int so_options; int /*<<< orphan*/ * sol_accept_filter_str; TYPE_1__* sol_accept_filter; } ;
struct accept_filter_arg {int /*<<< orphan*/  af_arg; int /*<<< orphan*/  af_name; } ;
struct TYPE_2__ {int /*<<< orphan*/ * accf_name; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct socket*) ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int SO_ACCEPTCONN ; 
 int /*<<< orphan*/  FUNC2 (struct accept_filter_arg*,int /*<<< orphan*/ ) ; 
 struct accept_filter_arg* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct sockopt*,struct accept_filter_arg*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC6(struct socket *so, struct sockopt *sopt)
{
	struct accept_filter_arg *afap;
	int error;

	error = 0;
	afap = FUNC3(sizeof(*afap), M_TEMP, M_WAITOK | M_ZERO);
	FUNC0(so);
	if ((so->so_options & SO_ACCEPTCONN) == 0) {
		error = EINVAL;
		goto out;
	}
	if (so->sol_accept_filter == NULL) {
		error = EINVAL;
		goto out;
	}
	FUNC5(afap->af_name, so->sol_accept_filter->accf_name);
	if (so->sol_accept_filter_str != NULL)
		FUNC5(afap->af_arg, so->sol_accept_filter_str);
out:
	FUNC1(so);
	if (error == 0)
		error = FUNC4(sopt, afap, sizeof(*afap));
	FUNC2(afap, M_TEMP);
	return (error);
}