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
struct proc_addr {int initialized; void* pfunction; int /*<<< orphan*/  function; int /*<<< orphan*/  dll; } ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSYS ; 
 void* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOAD_LIBRARY_SEARCH_SYSTEM32 ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  errno ; 

__attribute__((used)) static inline void *FUNC2(struct proc_addr *proc)
{
	/* only do this once */
	if (!proc->initialized) {
		HANDLE hnd;
		proc->initialized = 1;
		hnd = FUNC1(proc->dll, NULL,
				     LOAD_LIBRARY_SEARCH_SYSTEM32);
		if (hnd)
			proc->pfunction = FUNC0(hnd, proc->function);
	}
	/* set ENOSYS if DLL or function was not found */
	if (!proc->pfunction)
		errno = ENOSYS;
	return proc->pfunction;
}