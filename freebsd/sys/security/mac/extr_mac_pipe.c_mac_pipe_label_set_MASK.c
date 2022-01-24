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
struct pipepair {int /*<<< orphan*/  pp_mtx; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int FUNC0 (struct ucred*,struct pipepair*,struct label*) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*,struct pipepair*,struct label*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC3(struct ucred *cred, struct pipepair *pp,
    struct label *label)
{
	int error;

	FUNC2(&pp->pp_mtx, MA_OWNED);

	error = FUNC0(cred, pp, label);
	if (error)
		return (error);

	FUNC1(cred, pp, label);

	return (0);
}