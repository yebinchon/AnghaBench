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
struct thread {int dummy; } ;
struct proc {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  MA_OWNED ; 
#define  PROC_ASLR_CTL 143 
#define  PROC_ASLR_STATUS 142 
 int /*<<< orphan*/  FUNC0 (struct proc*,int /*<<< orphan*/ ) ; 
#define  PROC_PROTMAX_CTL 141 
#define  PROC_PROTMAX_STATUS 140 
#define  PROC_REAP_ACQUIRE 139 
#define  PROC_REAP_GETPIDS 138 
#define  PROC_REAP_KILL 137 
#define  PROC_REAP_RELEASE 136 
#define  PROC_REAP_STATUS 135 
#define  PROC_SPROTECT 134 
#define  PROC_STACKGAP_CTL 133 
#define  PROC_STACKGAP_STATUS 132 
#define  PROC_TRACE_CTL 131 
#define  PROC_TRACE_STATUS 130 
#define  PROC_TRAPCAP_CTL 129 
#define  PROC_TRAPCAP_STATUS 128 
 int FUNC1 (struct thread*,struct proc*,int) ; 
 int FUNC2 (struct thread*,struct proc*,void*) ; 
 int FUNC3 (struct thread*,struct proc*,int) ; 
 int FUNC4 (struct thread*,struct proc*,int) ; 
 int FUNC5 (struct thread*,struct proc*,void*) ; 
 int FUNC6 (struct thread*,struct proc*) ; 
 int FUNC7 (struct thread*,struct proc*,void*) ; 
 int FUNC8 (struct thread*,struct proc*,void*) ; 
 int FUNC9 (struct thread*,struct proc*) ; 
 int FUNC10 (struct thread*,struct proc*,void*) ; 
 int FUNC11 (struct thread*,struct proc*,int) ; 
 int FUNC12 (struct thread*,struct proc*,void*) ; 
 int FUNC13 (struct thread*,struct proc*,int) ; 
 int FUNC14 (struct thread*,struct proc*,void*) ; 
 int FUNC15 (struct thread*,struct proc*,int) ; 
 int FUNC16 (struct thread*,struct proc*,void*) ; 

__attribute__((used)) static int
FUNC17(struct thread *td, struct proc *p, int com, void *data)
{

	FUNC0(p, MA_OWNED);
	switch (com) {
	case PROC_ASLR_CTL:
		return (FUNC1(td, p, *(int *)data));
	case PROC_ASLR_STATUS:
		return (FUNC2(td, p, data));
	case PROC_SPROTECT:
		return (FUNC3(td, p, *(int *)data));
	case PROC_PROTMAX_CTL:
		return (FUNC4(td, p, *(int *)data));
	case PROC_PROTMAX_STATUS:
		return (FUNC5(td, p, data));
	case PROC_STACKGAP_CTL:
		return (FUNC11(td, p, *(int *)data));
	case PROC_STACKGAP_STATUS:
		return (FUNC12(td, p, data));
	case PROC_REAP_ACQUIRE:
		return (FUNC6(td, p));
	case PROC_REAP_RELEASE:
		return (FUNC9(td, p));
	case PROC_REAP_STATUS:
		return (FUNC10(td, p, data));
	case PROC_REAP_GETPIDS:
		return (FUNC7(td, p, data));
	case PROC_REAP_KILL:
		return (FUNC8(td, p, data));
	case PROC_TRACE_CTL:
		return (FUNC13(td, p, *(int *)data));
	case PROC_TRACE_STATUS:
		return (FUNC14(td, p, data));
	case PROC_TRAPCAP_CTL:
		return (FUNC15(td, p, *(int *)data));
	case PROC_TRAPCAP_STATUS:
		return (FUNC16(td, p, data));
	default:
		return (EINVAL);
	}
}