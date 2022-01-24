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
typedef  int /*<<< orphan*/  vm_offset_t ;
struct exec_args_kva {int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 struct exec_args_kva* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (uintptr_t*) ; 
 int /*<<< orphan*/  exec_args_kva ; 
 int /*<<< orphan*/  exec_args_kva_freelist ; 
 int /*<<< orphan*/  exec_args_kva_mtx ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 

__attribute__((used)) static vm_offset_t
FUNC7(void **cookie)
{
	struct exec_args_kva *argkva;

	argkva = (void *)FUNC3(
	    (uintptr_t *)FUNC0(exec_args_kva));
	if (argkva == NULL) {
		FUNC4(&exec_args_kva_mtx);
		while ((argkva = FUNC1(&exec_args_kva_freelist)) == NULL)
			(void)FUNC5(&exec_args_kva_freelist,
			    &exec_args_kva_mtx, 0, "execkva", 0);
		FUNC2(&exec_args_kva_freelist, next);
		FUNC6(&exec_args_kva_mtx);
	}
	*(struct exec_args_kva **)cookie = argkva;
	return (argkva->addr);
}