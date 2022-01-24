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
struct thread {int dummy; } ;
typedef  int /*<<< orphan*/ * pmap_t ;
struct TYPE_4__ {TYPE_1__* p_vmspace; } ;
struct TYPE_3__ {int /*<<< orphan*/  vm_pmap; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* curproc ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  efi_lock ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void)
{
	struct thread *td;
	pmap_t curpmap;

	FUNC1();

	curpmap = &curproc->p_vmspace->vm_pmap;
	td = curthread;
	FUNC2(td, NULL);
	FUNC3(&efi_lock);
	FUNC0(curpmap);
}