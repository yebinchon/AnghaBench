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
typedef  int /*<<< orphan*/  module_t ;

/* Variables and functions */
#define  MOD_LOAD 129 
#define  MOD_UNLOAD 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nseq ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  seqinfo_mtx ; 

int
FUNC4(module_t mod, int type, void *data)
{
	int retval, r;

	retval = 0;

	switch (type) {
	case MOD_LOAD:
		FUNC1(&seqinfo_mtx, "seqmod", NULL, 0);
		retval = FUNC2();
		break;

	case MOD_UNLOAD:
		while (nseq) {
			r = FUNC3(nseq - 1);
			if (r) {
				retval = r;
				break;
			}
		}
		if (nseq == 0) {
			retval = 0;
			FUNC0(&seqinfo_mtx);
		}
		break;

	default:
		break;
	}

	return retval;
}