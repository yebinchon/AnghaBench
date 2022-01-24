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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
struct mpt_softc {int /*<<< orphan*/  failure_id; int /*<<< orphan*/  role; int /*<<< orphan*/  verbose; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CTLFLAG_RD ; 
 int /*<<< orphan*/  CTLFLAG_RW ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sysctl_oid*) ; 
 struct sysctl_ctx_list* FUNC3 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct mpt_softc *mpt)
{
	struct sysctl_ctx_list *ctx = FUNC3(mpt->dev);
	struct sysctl_oid *tree = FUNC4(mpt->dev);

	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		       "debug", CTLFLAG_RW, &mpt->verbose, 0,
		       "Debugging/Verbose level");
	FUNC1(ctx, FUNC2(tree), OID_AUTO,
		       "role", CTLFLAG_RD, &mpt->role, 0,
		       "HBA role");
#ifdef	MPT_TEST_MULTIPATH
	SYSCTL_ADD_INT(ctx, SYSCTL_CHILDREN(tree), OID_AUTO,
		       "failure_id", CTLFLAG_RW, &mpt->failure_id, -1,
		       "Next Target to Fail");
#endif
}