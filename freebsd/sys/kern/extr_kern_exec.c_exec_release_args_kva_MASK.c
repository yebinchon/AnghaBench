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
typedef  scalar_t__ vm_offset_t ;
typedef  scalar_t__ u_int ;
struct exec_args_kva {scalar_t__ gen; scalar_t__ addr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MADV_FREE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct exec_args_kva*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (uintptr_t*,uintptr_t,uintptr_t) ; 
 int /*<<< orphan*/  exec_args_kva ; 
 int /*<<< orphan*/  exec_args_kva_freelist ; 
 int /*<<< orphan*/  exec_args_kva_mtx ; 
 int /*<<< orphan*/  exec_map ; 
 scalar_t__ exec_map_entry_size ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct exec_args_kva *argkva, u_int gen)
{
	vm_offset_t base;

	base = argkva->addr;
	if (argkva->gen != gen) {
		(void)FUNC5(exec_map, base, base + exec_map_entry_size,
		    MADV_FREE);
		argkva->gen = gen;
	}
	if (!FUNC2((uintptr_t *)FUNC0(exec_args_kva),
	    (uintptr_t)NULL, (uintptr_t)argkva)) {
		FUNC3(&exec_args_kva_mtx);
		FUNC1(&exec_args_kva_freelist, argkva, next);
		FUNC6(&exec_args_kva_freelist);
		FUNC4(&exec_args_kva_mtx);
	}
}