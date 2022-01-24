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
struct socket {int dummy; } ;
struct icl_conn {int ic_check_send_space; int /*<<< orphan*/  ic_send_cv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct icl_conn*) ; 
 int /*<<< orphan*/  FUNC1 (struct icl_conn*) ; 
 int SU_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 

__attribute__((used)) static int
FUNC4(struct socket *so, void *arg, int waitflag)
{
	struct icl_conn *ic;

	if (!FUNC3(so))
		return (SU_OK);

	ic = arg;

	FUNC0(ic);
	ic->ic_check_send_space = true;
	FUNC1(ic);

	FUNC2(&ic->ic_send_cv);

	return (SU_OK);
}