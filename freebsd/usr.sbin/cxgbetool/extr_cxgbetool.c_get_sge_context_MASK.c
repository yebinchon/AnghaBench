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
struct t4_sge_context {long cid; int /*<<< orphan*/  mem_id; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_GET_SGE_CONTEXT ; 
 int EINVAL ; 
 int /*<<< orphan*/  SGE_CONTEXT_CNM ; 
 int /*<<< orphan*/  SGE_CONTEXT_EGRESS ; 
 int /*<<< orphan*/  SGE_CONTEXT_FLM ; 
 int /*<<< orphan*/  SGE_CONTEXT_INGRESS ; 
 int chip_id ; 
 int FUNC0 (int /*<<< orphan*/ ,struct t4_sge_context*) ; 
 int /*<<< orphan*/  FUNC1 (struct t4_sge_context*) ; 
 int /*<<< orphan*/  FUNC2 (struct t4_sge_context*,int) ; 
 char* FUNC3 (char const*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 

__attribute__((used)) static int
FUNC6(int argc, const char *argv[])
{
	int rc;
	char *p;
	long cid;
	struct t4_sge_context cntxt = {0};

	if (argc != 2) {
		FUNC5("sge_context: incorrect number of arguments.");
		return (EINVAL);
	}

	if (!FUNC4(argv[0], "egress"))
		cntxt.mem_id = SGE_CONTEXT_EGRESS;
	else if (!FUNC4(argv[0], "ingress"))
		cntxt.mem_id = SGE_CONTEXT_INGRESS;
	else if (!FUNC4(argv[0], "fl"))
		cntxt.mem_id = SGE_CONTEXT_FLM;
	else if (!FUNC4(argv[0], "cong"))
		cntxt.mem_id = SGE_CONTEXT_CNM;
	else {
		FUNC5("unknown context type \"%s\"; known types are egress, "
		    "ingress, fl, and cong.", argv[0]);
		return (EINVAL);
	}

	p = FUNC3(argv[1], &cid, NULL);
	if (*p) {
		FUNC5("invalid context id \"%s\"", argv[1]);
		return (EINVAL);
	}
	cntxt.cid = cid;

	rc = FUNC0(CHELSIO_T4_GET_SGE_CONTEXT, &cntxt);
	if (rc != 0)
		return (rc);

	if (chip_id == 4)
		FUNC1(&cntxt);
	else
		FUNC2(&cntxt, chip_id);

	return (0);
}