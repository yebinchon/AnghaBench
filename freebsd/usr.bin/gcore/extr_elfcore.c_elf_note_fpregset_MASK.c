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
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  fpregset_t ;
typedef  void elfcore_fpregset_t ;

/* Variables and functions */
 int /*<<< orphan*/  PT_GETFPREGS ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *
FUNC4(void *arg, size_t *sizep)
{
	lwpid_t tid;
	elfcore_fpregset_t *fpregset;
	fpregset_t fpreg;

	tid = *(lwpid_t *)arg;
	fpregset = FUNC0(1, sizeof(*fpregset));
	if (fpregset == NULL)
		FUNC2(1, "out of memory");
	FUNC3(PT_GETFPREGS, tid, (void *)&fpreg, 0);
	FUNC1(fpregset, &fpreg);

	*sizep = sizeof(*fpregset);
	return (fpregset);
}