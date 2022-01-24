#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct thread {TYPE_2__* td_proc; } ;
typedef  int /*<<< orphan*/ * pmap_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_pmap; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  FPU_KERN_NOCTX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct thread* curthread ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  efi_lock ; 
 int /*<<< orphan*/ * efi_runtime ; 
 int /*<<< orphan*/  FUNC3 (struct thread*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(void)
{
	struct thread *td;
	pmap_t curpmap;
	int error;

	if (efi_runtime == NULL)
		return (ENXIO);
	td = curthread;
	curpmap = &td->td_proc->p_vmspace->vm_pmap;
	FUNC0(curpmap);
	FUNC5(&efi_lock);
	FUNC3(td, NULL, FPU_KERN_NOCTX);
	error = FUNC2();
	if (error != 0) {
		FUNC4(td, NULL);
		FUNC6(&efi_lock);
		FUNC1(curpmap);
	}
	return (error);
}