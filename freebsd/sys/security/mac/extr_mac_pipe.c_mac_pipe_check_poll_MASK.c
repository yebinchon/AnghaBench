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
struct ucred {int dummy; } ;
struct pipepair {int /*<<< orphan*/  pp_label; int /*<<< orphan*/  pp_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct pipepair*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct pipepair*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_check_poll ; 

int
FUNC3(struct ucred *cred, struct pipepair *pp)
{
	int error;

	FUNC2(&pp->pp_mtx, MA_OWNED);

	FUNC1(pipe_check_poll, cred, pp, pp->pp_label);
	FUNC0(pipe_check_poll, error, cred, pp);

	return (error);
}