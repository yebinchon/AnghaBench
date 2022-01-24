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
struct t4_offload_policy {int nrules; struct offload_rule* rule; } ;
struct offload_rule {int dummy; } ;
typedef  int /*<<< orphan*/  pcap_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DLT_EN10MB ; 
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 scalar_t__ REALLOC_STRIDE ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (struct t4_offload_policy*) ; 
 size_t FUNC5 (char**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,size_t) ; 
 int FUNC7 (int,char*,size_t,int /*<<< orphan*/ *,struct offload_rule*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int) ; 
 struct offload_rule* FUNC10 (struct offload_rule*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 

__attribute__((used)) static int
FUNC13(const char *fname, struct t4_offload_policy *op)
{
	FILE *fp;
	char *line;
	int lno, maxrules, rc;
	size_t lcap, llen;
	struct offload_rule *r;
	pcap_t *pd;

	fp = FUNC2(fname, "r");
	if (fp == NULL) {
		FUNC11("Unable to open file \"%s\"", fname);
		return (errno);
	}
	pd = FUNC9(DLT_EN10MB, 128);
	if (pd == NULL) {
		FUNC12("Failed to open pcap device");
		FUNC0(fp);
		return (EIO);
	}

	rc = 0;
	lno = 0;
	lcap = 0;
	maxrules = 0;
	op->nrules = 0;
	op->rule = NULL;
	line = NULL;

	while ((llen = FUNC5(&line, &lcap, fp)) != -1) {
		lno++;

		/* Skip empty lines. */
		if (FUNC6(line, llen))
			continue;

		if (op->nrules == maxrules) {
			maxrules += REALLOC_STRIDE;
			r = FUNC10(op->rule,
			    maxrules * sizeof(struct offload_rule));
			if (r == NULL) {
				FUNC12("failed to allocate memory for %d rules",
				    maxrules);
				rc = ENOMEM;
				goto done;
			}
			op->rule = r;
		}

		r = &op->rule[op->nrules];
		rc = FUNC7(lno, line, llen, pd, r);
		if (rc != 0) {
			FUNC12("Error parsing line %d of \"%s\"", lno, fname);
			goto done;
		}

		op->nrules++;
	}
	FUNC3(line);

	if (!FUNC1(fp)) {
		FUNC11("Error while reading from file \"%s\" at line %d",
		    fname, lno);
		rc = errno;
		goto done;
	}

	if (op->nrules == 0) {
		FUNC12("No valid rules found in \"%s\"", fname);
		rc = EINVAL;
	}
done:
	FUNC8(pd);
	FUNC0(fp);
	if (rc != 0) {
		FUNC4(op);
	}

	return (rc);
}