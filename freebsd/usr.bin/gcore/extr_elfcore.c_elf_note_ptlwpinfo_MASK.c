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
struct ptrace_lwpinfo {int dummy; } ;
typedef  int /*<<< orphan*/  lwpinfo ;
typedef  int /*<<< orphan*/  lwpid_t ;
typedef  int /*<<< orphan*/  elfcore_lwpinfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  PT_LWPINFO ; 
 void* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ptrace_lwpinfo*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int) ; 

__attribute__((used)) static void *
FUNC4(void *arg, size_t *sizep)
{
	lwpid_t tid;
	elfcore_lwpinfo_t *elf_info;
	struct ptrace_lwpinfo lwpinfo;
	void *p;

	tid = *(lwpid_t *)arg;
	p = FUNC0(1, sizeof(int) + sizeof(elfcore_lwpinfo_t));
	if (p == NULL)
		FUNC2(1, "out of memory");
	*(int *)p = sizeof(elfcore_lwpinfo_t);
	elf_info = (void *)((int *)p + 1);
	FUNC3(PT_LWPINFO, tid, (void *)&lwpinfo, sizeof(lwpinfo));
	FUNC1(elf_info, &lwpinfo);

	*sizep = sizeof(int) + sizeof(struct ptrace_lwpinfo);
	return (p);
}