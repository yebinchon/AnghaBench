#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  qval; void** lval; } ;
typedef  TYPE_1__ nfsquad_t ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_cverf_mtx ; 

__attribute__((used)) static nfsquad_t
FUNC3(void)
{
	static nfsquad_t cverf;
	nfsquad_t ret;
	static int cverf_initialized = 0;

	FUNC1(&nfs_cverf_mtx);
	if (cverf_initialized == 0) {
		cverf.lval[0] = FUNC0();
		cverf.lval[1] = FUNC0();
		cverf_initialized = 1;
	} else
		cverf.qval++;
	ret = cverf;
	FUNC2(&nfs_cverf_mtx);

	return (ret);
}