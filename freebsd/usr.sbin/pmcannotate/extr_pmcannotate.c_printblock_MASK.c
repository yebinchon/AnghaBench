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
typedef  scalar_t__ u_int ;
struct entry {scalar_t__ en_nsamples; } ;
struct aggent {float ag_nsamples; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int LNBUFF ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 long FUNC2 (int /*<<< orphan*/ *) ; 
 struct entry* FUNC3 (uintptr_t) ; 
 scalar_t__ FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int FUNC7 (char*,char*,void**) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(FILE *fp, struct aggent *agg)
{
	char buffer[LNBUFF];
	long lstart;
	struct entry *obj;
	u_int tnsamples;
	int done, nbytes, sentinel;
	void *ptr;

	/*
	 * We expect the first thing of the block is C code, so simply give
	 * up if asm line is found.
	 */
	lstart = FUNC2(fp);
	sentinel = 0;
	for (;;) {
		if (FUNC0(buffer, LNBUFF, fp) == NULL)
			return (0);
		if (FUNC4(buffer) != 0)
			break;
		sentinel = 1;
		nbytes = FUNC5(buffer);
		if (nbytes != 0) {
			if (FUNC1(fp, nbytes * -1, SEEK_CUR) == -1)
				return (-1);
			return (0);
		}
	}

	/*
	 * If the sentinel is not set, it means it did not match any
	 * "high half" for this code so simply give up.
	 * Operates the second-level aggregation.
	 */
	tnsamples = 0;
	do {
		if (sentinel == 0)
			return (-1);
		if (FUNC7(buffer, " %p:", &ptr) != 1)
			return (-1);
		obj = FUNC3((uintptr_t)ptr);
		if (obj != NULL)
			tnsamples += obj->en_nsamples;
	} while (FUNC0(buffer, LNBUFF, fp) != NULL && FUNC4(buffer) != 0);

	/* Rewind to the start of the block in order to start the printout. */
	if (FUNC1(fp, lstart, SEEK_SET) == -1)
		return (-1);

	/* Again the high half of the block rappresenting the C part. */
	done = 0;
	while (FUNC0(buffer, LNBUFF, fp) != NULL && FUNC4(buffer) == 0) {
		if (tnsamples == 0 || done != 0)
			FUNC6("\t| %s", buffer);
		else {
			done = 1;
			FUNC6("%.2f%%\t| %s",
			    (float)tnsamples * 100 / agg->ag_nsamples, buffer);
		}
	}

	/*
	 * Again the low half of the block rappresenting the asm
	 * translation part.
	 */
	for (;;) {
		if (FUNC0(buffer, LNBUFF, fp) == NULL)
			return (0);
		if (FUNC4(buffer) == 0)
			break;
		nbytes = FUNC5(buffer);
		if (nbytes != 0) {
			if (FUNC1(fp, nbytes * -1, SEEK_CUR) == -1)
				return (-1);
			return (0);
		}
	}
	if (FUNC1(fp, FUNC8(buffer) * -1, SEEK_CUR) == -1)
		return (-1);
	return (0);
}