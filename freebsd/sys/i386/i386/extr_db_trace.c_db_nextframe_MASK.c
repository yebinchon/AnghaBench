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
struct trapframe {int tf_eip; int tf_ebp; int /*<<< orphan*/  tf_eax; int /*<<< orphan*/  tf_trapno; } ;
struct thread {int dummy; } ;
struct i386_frame {scalar_t__ f_frame; int /*<<< orphan*/  f_retaddr; } ;
typedef  int /*<<< orphan*/  db_expr_t ;
typedef  scalar_t__ db_addr_t ;
typedef  int /*<<< orphan*/  c_db_sym_t ;
struct TYPE_2__ {int tss_esp; int tss_eip; int tss_ebp; } ;

/* Variables and functions */
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int DOUBLE_FAULT ; 
#define  INTERRUPT 130 
 int NORMAL ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int PMAP_TRM_MIN_ADDRESS ; 
#define  SYSCALL 129 
#define  TRAP 128 
 int /*<<< orphan*/  FUNC1 (struct trapframe*) ; 
 int /*<<< orphan*/  common_tssp ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct thread*) ; 
 int FUNC8 (struct trapframe*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int setidt_disp ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char const*,char*,int) ; 

__attribute__((used)) static void
FUNC12(struct i386_frame **fp, db_addr_t *ip, struct thread *td)
{
	struct trapframe *tf;
	int frame_type;
	int eip, esp, ebp;
	db_expr_t offset;
	c_db_sym_t sym;
	const char *name;

	eip = FUNC2((int) &(*fp)->f_retaddr, 4, false);
	ebp = FUNC2((int) &(*fp)->f_frame, 4, false);

	/*
	 * Figure out frame type.  We look at the address just before
	 * the saved instruction pointer as the saved EIP is after the
	 * call function, and if the function being called is marked as
	 * dead (such as panic() at the end of dblfault_handler()), then
	 * the instruction at the saved EIP will be part of a different
	 * function (syscall() in this example) rather than the one that
	 * actually made the call.
	 */
	frame_type = NORMAL;

	if (eip >= PMAP_TRM_MIN_ADDRESS) {
		sym = FUNC5(eip - 1 - setidt_disp, DB_STGY_ANY,
		    &offset);
	} else {
		sym = FUNC5(eip - 1, DB_STGY_ANY, &offset);
	}
	FUNC6(sym, &name, NULL);
	if (name != NULL) {
		if (FUNC10(name, "calltrap") == 0 ||
		    FUNC10(name, "fork_trampoline") == 0)
			frame_type = TRAP;
		else if (FUNC11(name, "Xatpic_intr", 11) == 0 ||
		    FUNC11(name, "Xapic_isr", 9) == 0) {
			frame_type = INTERRUPT;
		} else if (FUNC10(name, "Xlcall_syscall") == 0 ||
		    FUNC10(name, "Xint0x80_syscall") == 0)
			frame_type = SYSCALL;
		else if (FUNC10(name, "dblfault_handler") == 0)
			frame_type = DOUBLE_FAULT;
		else if (FUNC10(name, "Xtimerint") == 0 ||
		    FUNC10(name, "Xxen_intr_upcall") == 0)
			frame_type = INTERRUPT;
		else if (FUNC10(name, "Xcpustop") == 0 ||
		    FUNC10(name, "Xrendezvous") == 0 ||
		    FUNC10(name, "Xipi_intr_bitmap_handler") == 0) {
			/* No arguments. */
			frame_type = INTERRUPT;
		}
	}

	/*
	 * Normal frames need no special processing.
	 */
	if (frame_type == NORMAL) {
		*ip = (db_addr_t) eip;
		*fp = (struct i386_frame *) ebp;
		return;
	}

	FUNC3(name, 0, 0, 0, eip, &(*fp)->f_frame);

	/*
	 * For a double fault, we have to snag the values from the
	 * previous TSS since a double fault uses a task gate to
	 * switch to a known good state.
	 */
	if (frame_type == DOUBLE_FAULT) {
		esp = FUNC0(common_tssp)->tss_esp;
		eip = FUNC0(common_tssp)->tss_eip;
		ebp = FUNC0(common_tssp)->tss_ebp;
		FUNC4(
		    "--- trap 0x17, eip = %#r, esp = %#r, ebp = %#r ---\n",
		    eip, esp, ebp);
		*ip = (db_addr_t) eip;
		*fp = (struct i386_frame *) ebp;
		return;
	}

	/*
	 * Point to base of trapframe which is just above the current
	 * frame.  Pointer to it was put into %ebp by the kernel entry
	 * code.
	 */
	tf = (struct trapframe *)(*fp)->f_frame;

	/*
	 * This can be the case for e.g. fork_trampoline, last frame
	 * of a kernel thread stack.
	 */
	if (tf == NULL) {
		*ip = 0;
		*fp = 0;
		FUNC4("--- kthread start\n");
		return;
	}

	esp = FUNC8(tf);
	eip = tf->tf_eip;
	ebp = tf->tf_ebp;
	switch (frame_type) {
	case TRAP:
		FUNC4("--- trap %#r", tf->tf_trapno);
		break;
	case SYSCALL:
		FUNC4("--- syscall");
		FUNC7(tf->tf_eax, td);
		break;
	case INTERRUPT:
		FUNC4("--- interrupt");
		break;
	default:
		FUNC9("The moon has moved again.");
	}
	FUNC4(", eip = %#r, esp = %#r, ebp = %#r ---\n", eip, esp, ebp);

	/*
	 * Detect the last (trap) frame on the kernel stack, where we
	 * entered kernel from usermode.  Terminate tracing in this
	 * case.
	 */
	switch (frame_type) {
	case TRAP:
	case INTERRUPT:
		if (!FUNC1(tf))
			break;
		/* FALLTHROUGH */
	case SYSCALL:
		ebp = 0;
		eip = 0;
		break;
	}

	*ip = (db_addr_t) eip;
	*fp = (struct i386_frame *) ebp;
}