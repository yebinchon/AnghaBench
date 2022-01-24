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
typedef  int /*<<< orphan*/  u_int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  PF_DEBUG_MISC ; 
 int /*<<< orphan*/  PF_RULESET_BINAT ; 
 int /*<<< orphan*/  PF_RULESET_FILTER ; 
 int /*<<< orphan*/  PF_RULESET_NAT ; 
 int /*<<< orphan*/  PF_RULESET_RDR ; 
 int /*<<< orphan*/  PF_RULESET_SCRUB ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC8(void)
{
	int error = 0;
	u_int32_t t[5];
	char nn = '\0';

	do {
		if ((error = FUNC2(&t[0], PF_RULESET_SCRUB, &nn))
		    != 0) {
			FUNC0(PF_DEBUG_MISC, ("shutdown_pf: SCRUB\n"));
			break;
		}
		if ((error = FUNC2(&t[1], PF_RULESET_FILTER, &nn))
		    != 0) {
			FUNC0(PF_DEBUG_MISC, ("shutdown_pf: FILTER\n"));
			break;		/* XXX: rollback? */
		}
		if ((error = FUNC2(&t[2], PF_RULESET_NAT, &nn))
		    != 0) {
			FUNC0(PF_DEBUG_MISC, ("shutdown_pf: NAT\n"));
			break;		/* XXX: rollback? */
		}
		if ((error = FUNC2(&t[3], PF_RULESET_BINAT, &nn))
		    != 0) {
			FUNC0(PF_DEBUG_MISC, ("shutdown_pf: BINAT\n"));
			break;		/* XXX: rollback? */
		}
		if ((error = FUNC2(&t[4], PF_RULESET_RDR, &nn))
		    != 0) {
			FUNC0(PF_DEBUG_MISC, ("shutdown_pf: RDR\n"));
			break;		/* XXX: rollback? */
		}

		/* XXX: these should always succeed here */
		FUNC7(t[0], PF_RULESET_SCRUB, &nn);
		FUNC7(t[1], PF_RULESET_FILTER, &nn);
		FUNC7(t[2], PF_RULESET_NAT, &nn);
		FUNC7(t[3], PF_RULESET_BINAT, &nn);
		FUNC7(t[4], PF_RULESET_RDR, &nn);

		if ((error = FUNC5()) != 0)
			break;

#ifdef ALTQ
		if ((error = pf_begin_altq(&t[0])) != 0) {
			DPFPRINTF(PF_DEBUG_MISC, ("shutdown_pf: ALTQ\n"));
			break;
		}
		pf_commit_altq(t[0]);
#endif

		FUNC4();

		FUNC3(NULL);

		/* status does not use malloced mem so no need to cleanup */
		/* fingerprints and interfaces have their own cleanup code */
	} while(0);

	return (error);
}