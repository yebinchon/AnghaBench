#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va ;
struct TYPE_2__ {int mc_ecx; int mc_eflags; uintptr_t mc_cs; uintptr_t mc_ds; uintptr_t mc_es; uintptr_t mc_ss; int mc_esp; } ;
struct vm86_init_args {int ss_size; char* ss_sp; int sa_flags; TYPE_1__ uc_mcontext; int /*<<< orphan*/  sa_sigaction; } ;
typedef  struct vm86_init_args ucontext_t ;
typedef  int /*<<< orphan*/  uc ;
struct sigaction {int ss_size; char* ss_sp; int sa_flags; TYPE_1__ uc_mcontext; int /*<<< orphan*/  sa_sigaction; } ;
typedef  struct vm86_init_args stack_t ;
typedef  int /*<<< orphan*/  ssa ;
typedef  int /*<<< orphan*/  sa ;

/* Variables and functions */
 int MAP_ANON ; 
 char* MAP_FAILED ; 
 int MAP_FIXED ; 
 int PAGE_SIZE ; 
 int PROT_EXEC ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int PSL_USER ; 
 int PSL_VM ; 
 int SA_ONSTACK ; 
 int SA_SIGINFO ; 
 int /*<<< orphan*/  SIGBUS ; 
 int /*<<< orphan*/  SIGILL ; 
 int /*<<< orphan*/  SIGSEGV ; 
 int /*<<< orphan*/  VM86_INIT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  gs ; 
 int FUNC1 (int /*<<< orphan*/ ,struct vm86_init_args*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct vm86_init_args*,int /*<<< orphan*/ ,int) ; 
 void* FUNC4 (void*,int,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  sig_handler ; 
 int FUNC6 (int /*<<< orphan*/ ,struct vm86_init_args*,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct vm86_init_args*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct vm86_init_args*) ; 
 scalar_t__ vm86_code_end ; 
 scalar_t__ vm86_code_start ; 

int
FUNC9(void)
{
	ucontext_t uc;
	struct sigaction sa;
	struct vm86_init_args va;
	stack_t ssa;
	char *vm86_code;

	gs = FUNC5();

	FUNC3(&ssa, 0, sizeof(ssa));
	ssa.ss_size = PAGE_SIZE * 128;
	ssa.ss_sp = FUNC4(NULL, ssa.ss_size, PROT_READ | PROT_WRITE |
	    PROT_EXEC, MAP_ANON, -1, 0);
	if (ssa.ss_sp == MAP_FAILED)
		FUNC0(1, "mmap sigstack");
	if (FUNC7(&ssa, NULL) == -1)
		FUNC0(1, "sigaltstack");

	FUNC3(&sa, 0, sizeof(sa));
	sa.sa_sigaction = sig_handler;
	sa.sa_flags = SA_SIGINFO | SA_ONSTACK;
	if (FUNC6(SIGBUS, &sa, NULL) == -1)
		FUNC0(1, "sigaction SIGBUS");
	if (FUNC6(SIGSEGV, &sa, NULL) == -1)
		FUNC0(1, "sigaction SIGSEGV");
	if (FUNC6(SIGILL, &sa, NULL) == -1)
		FUNC0(1, "sigaction SIGILL");

	vm86_code = FUNC4((void *)0x10000, PAGE_SIZE, PROT_READ | PROT_WRITE |
	    PROT_EXEC, MAP_ANON | MAP_FIXED, -1, 0);
	if (vm86_code == MAP_FAILED)
		FUNC0(1, "mmap");
	FUNC2(vm86_code, vm86_code_start, vm86_code_end - vm86_code_start);

	FUNC3(&va, 0, sizeof(va));
	if (FUNC1(VM86_INIT, &va) == -1)
		FUNC0(1, "VM86_INIT");

	FUNC3(&uc, 0, sizeof(uc));
	uc.uc_mcontext.mc_ecx = 0x2345;
	uc.uc_mcontext.mc_eflags = PSL_VM | PSL_USER;
	uc.uc_mcontext.mc_cs = uc.uc_mcontext.mc_ds = uc.uc_mcontext.mc_es =
	    uc.uc_mcontext.mc_ss = (uintptr_t)vm86_code >> 4;
	uc.uc_mcontext.mc_esp = 0xfffe;
	FUNC8(&uc);
}