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
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,struct ucred*,struct pipepair*,struct label*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucred*,struct pipepair*,int /*<<< orphan*/ ,struct label*) ; 
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_check_relabel ; 

__attribute__((used)) static int
FUNC3(struct ucred *cred, struct pipepair *pp,
    struct label *newlabel)
{
	int error;

	FUNC2(&pp->pp_mtx, MA_OWNED);

	FUNC1(pipe_check_relabel, cred, pp, pp->pp_label,
	    newlabel);
	FUNC0(pipe_check_relabel, error, cred, pp, newlabel);

	return (error);
}