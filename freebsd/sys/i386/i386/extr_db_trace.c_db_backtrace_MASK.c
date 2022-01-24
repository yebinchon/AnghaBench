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
struct trapframe {int tf_eflags; intptr_t tf_esp; scalar_t__ tf_ebp; scalar_t__ tf_err; int /*<<< orphan*/  tf_ss; int /*<<< orphan*/  tf_eip; int /*<<< orphan*/  tf_cs; } ;
struct thread {int dummy; } ;
struct i386_frame {int f_arg0; int /*<<< orphan*/  f_retaddr; } ;
typedef  scalar_t__ register_t ;
typedef  scalar_t__ db_expr_t ;
typedef  scalar_t__ db_addr_t ;
typedef  int /*<<< orphan*/ * c_db_sym_t ;

/* Variables and functions */
 int /*<<< orphan*/ * C_DB_SYM_NULL ; 
 int /*<<< orphan*/  DB_STGY_ANY ; 
 int /*<<< orphan*/  DB_STGY_PROC ; 
 int MAXNARG ; 
 int PSL_VM ; 
 scalar_t__ FUNC0 (struct trapframe*) ; 
 scalar_t__ FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct i386_frame**,scalar_t__*,struct thread*) ; 
 int FUNC3 (struct i386_frame*) ; 
 int /*<<< orphan*/  db_pager_quit ; 
 int /*<<< orphan*/  FUNC4 (char const*,int,char**,int*,scalar_t__,struct i386_frame*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,intptr_t,scalar_t__,struct trapframe*) ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC7 (struct trapframe*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int*,char**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const**,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct trapframe*) ; 
 struct trapframe* kdb_frame ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

__attribute__((used)) static int
FUNC13(struct thread *td, struct trapframe *tf, struct i386_frame *frame,
    db_addr_t pc, register_t sp, int count)
{
	struct i386_frame *actframe;
#define MAXNARG	16
	char *argnames[MAXNARG], **argnp = NULL;
	const char *name;
	int *argp;
	db_expr_t offset;
	c_db_sym_t sym;
	int instr, narg;
	bool first;

	if (FUNC7(tf) == 16) {
		FUNC5(
"--- 16-bit%s, cs:eip = %#x:%#x, ss:esp = %#x:%#x, ebp = %#x, tf = %p ---\n",
		    (tf->tf_eflags & PSL_VM) ? " (vm86)" : "",
		    tf->tf_cs, tf->tf_eip,
		    FUNC0(tf) ? tf->tf_ss : FUNC11(),
		    FUNC0(tf) ? tf->tf_esp : (intptr_t)&tf->tf_esp,
		    tf->tf_ebp, tf);
		return (0);
	}

	/* 'frame' can be null initially.  Just print the pc then. */
	if (frame == NULL)
		goto out;

	/*
	 * If an indirect call via an invalid pointer caused a trap,
	 * %pc contains the invalid address while the return address
	 * of the unlucky caller has been saved by CPU on the stack
	 * just before the trap frame.  In this case, try to recover
	 * the caller's address so that the first frame is assigned
	 * to the right spot in the right function, for that is where
	 * the failure actually happened.
	 *
	 * This trick depends on the fault address stashed in tf_err
	 * by trap_fatal() before entering KDB.
	 */
	if (kdb_frame && pc == kdb_frame->tf_err) {
		/*
		 * Find where the trap frame actually ends.
		 * It won't contain tf_esp or tf_ss unless crossing rings.
		 */
		if (FUNC0(kdb_frame))
			instr = (int)(kdb_frame + 1);
		else
			instr = (int)&kdb_frame->tf_esp;
		pc = FUNC1(instr, 4, false);
	}

	if (count == -1)
		count = 1024;

	first = true;
	while (count-- && !db_pager_quit) {
		sym = FUNC6(pc, DB_STGY_ANY, &offset);
		FUNC9(sym, &name, NULL);

		/*
		 * Attempt to determine a (possibly fake) frame that gives
		 * the caller's pc.  It may differ from `frame' if the
		 * current function never sets up a standard frame or hasn't
		 * set one up yet or has just discarded one.  The last two
		 * cases can be guessed fairly reliably for code generated
		 * by gcc.  The first case is too much trouble to handle in
		 * general because the amount of junk on the stack depends
		 * on the pc (the special handling of "calltrap", etc. in
		 * db_nextframe() works because the `next' pc is special).
		 */
		actframe = frame;
		if (first) {
			first = false;
			if (sym == C_DB_SYM_NULL && sp != 0) {
				/*
				 * If a symbol couldn't be found, we've probably
				 * jumped to a bogus location, so try and use
				 * the return address to find our caller.
				 */
				FUNC4(name, 0, 0, 0, pc,
				    NULL);
				pc = FUNC1(sp, 4, false);
				if (FUNC6(pc, DB_STGY_PROC,
				    &offset) == C_DB_SYM_NULL)
					break;
				continue;
			} else if (tf != NULL) {
				instr = FUNC1(pc, 4, false);
				if ((instr & 0xffffff) == 0x00e58955) {
					/* pushl %ebp; movl %esp, %ebp */
					actframe = (void *)(FUNC10(tf) - 4);
				} else if ((instr & 0xffff) == 0x0000e589) {
					/* movl %esp, %ebp */
					actframe = (void *)FUNC10(tf);
					if (tf->tf_ebp == 0) {
						/* Fake frame better. */
						frame = actframe;
					}
				} else if ((instr & 0xff) == 0x000000c3) {
					/* ret */
					actframe = (void *)(FUNC10(tf) - 4);
				} else if (offset == 0) {
					/* Probably an assembler symbol. */
					actframe = (void *)(FUNC10(tf) - 4);
				}
			} else if (FUNC12(name, "fork_trampoline") == 0) {
				/*
				 * Don't try to walk back on a stack for a
				 * process that hasn't actually been run yet.
				 */
				FUNC4(name, 0, 0, 0, pc,
				    actframe);
				break;
			}
		}

		argp = &actframe->f_arg0;
		narg = MAXNARG;
		if (sym != NULL && FUNC8(sym, &narg, argnames)) {
			argnp = argnames;
		} else {
			narg = FUNC3(frame);
		}

		FUNC4(name, narg, argnp, argp, pc, actframe);

		if (actframe != frame) {
			/* `frame' belongs to caller. */
			pc = (db_addr_t)
			    FUNC1((int)&actframe->f_retaddr, 4, false);
			continue;
		}

		FUNC2(&frame, &pc, td);

out:
		/*
		 * 'frame' can be null here, either because it was initially
		 * null or because db_nextframe() found no frame.
		 * db_nextframe() may also have found a non-kernel frame.
		 * !INKERNEL() classifies both.  Stop tracing if either,
		 * after printing the pc if it is the kernel.
		 */
		if (frame == NULL || frame <= actframe) {
			if (pc != 0) {
				sym = FUNC6(pc, DB_STGY_ANY,
				    &offset);
				FUNC9(sym, &name, NULL);
				FUNC4(name, 0, 0, 0, pc, frame);
			}
			break;
		}
	}

	return (0);
}