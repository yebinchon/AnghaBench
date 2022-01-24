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
struct vm86_vme_args {int sub_op; char* sub_args; int state; int /*<<< orphan*/  vmf; int /*<<< orphan*/  intnum; int /*<<< orphan*/  int_map; int /*<<< orphan*/  debug; } ;
struct vm86_kernel {int vm86_has_vme; int vm86_inited; int /*<<< orphan*/  vm86_intmap; int /*<<< orphan*/  vm86_debug; } ;
struct vm86_intcall_args {int sub_op; char* sub_args; int state; int /*<<< orphan*/  vmf; int /*<<< orphan*/  intnum; int /*<<< orphan*/  int_map; int /*<<< orphan*/  debug; } ;
struct vm86_init_args {int sub_op; char* sub_args; int state; int /*<<< orphan*/  vmf; int /*<<< orphan*/  intnum; int /*<<< orphan*/  int_map; int /*<<< orphan*/  debug; } ;
struct thread {TYPE_2__* td_pcb; } ;
struct i386_vm86_args {int sub_op; char* sub_args; int state; int /*<<< orphan*/  vmf; int /*<<< orphan*/  intnum; int /*<<< orphan*/  int_map; int /*<<< orphan*/  debug; } ;
typedef  int /*<<< orphan*/  sa ;
struct TYPE_4__ {TYPE_1__* pcb_ext; } ;
struct TYPE_3__ {struct vm86_kernel ext_vm86; } ;

/* Variables and functions */
 int CPUID_VME ; 
 int CR4_VME ; 
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  PRIV_VM86_INTCALL ; 
#define  VM86_GET_VME 131 
#define  VM86_INIT 130 
#define  VM86_INTCALL 129 
#define  VM86_SET_VME 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC1 (char*,struct vm86_vme_args*,int) ; 
 int FUNC2 (struct vm86_vme_args*,char*,int) ; 
 int cpu_feature ; 
 int FUNC3 (struct thread*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (struct thread*,int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int
FUNC8(struct thread *td, char *args)
{
	int error = 0;
	struct i386_vm86_args ua;
	struct vm86_kernel *vm86;

	if ((error = FUNC1(args, &ua, sizeof(struct i386_vm86_args))) != 0)
		return (error);

	if (td->td_pcb->pcb_ext == 0)
		if ((error = FUNC3(td)) != 0)
			return (error);
	vm86 = &td->td_pcb->pcb_ext->ext_vm86;

	switch (ua.sub_op) {
	case VM86_INIT: {
		struct vm86_init_args sa;

		if ((error = FUNC1(ua.sub_args, &sa, sizeof(sa))) != 0)
			return (error);
		if (cpu_feature & CPUID_VME)
			vm86->vm86_has_vme = (FUNC6() & CR4_VME ? 1 : 0);
		else
			vm86->vm86_has_vme = 0;
		vm86->vm86_inited = 1;
		vm86->vm86_debug = sa.debug;
		FUNC0(&sa.int_map, vm86->vm86_intmap, 32);
		}
		break;

#if 0
	case VM86_SET_VME: {
		struct vm86_vme_args sa;
	
		if ((cpu_feature & CPUID_VME) == 0)
			return (ENODEV);

		if (error = copyin(ua.sub_args, &sa, sizeof(sa)))
			return (error);
		if (sa.state)
			load_cr4(rcr4() | CR4_VME);
		else
			load_cr4(rcr4() & ~CR4_VME);
		}
		break;
#endif

	case VM86_GET_VME: {
		struct vm86_vme_args sa;

		sa.state = (FUNC6() & CR4_VME ? 1 : 0);
        	error = FUNC2(&sa, ua.sub_args, sizeof(sa));
		}
		break;

	case VM86_INTCALL: {
		struct vm86_intcall_args sa;

		if ((error = FUNC5(td, PRIV_VM86_INTCALL)))
			return (error);
		if ((error = FUNC1(ua.sub_args, &sa, sizeof(sa))))
			return (error);
		if ((error = FUNC7(sa.intnum, &sa.vmf)))
			return (error);
		error = FUNC2(&sa, ua.sub_args, sizeof(sa));
		}
		break;

	default:
		error = EINVAL;
	}
	return (error);
}