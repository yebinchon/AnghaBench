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
struct thread {int td_flags; } ;

/* Variables and functions */
#define  SIGDEFERSTOP_EINTR 132 
#define  SIGDEFERSTOP_ERESTART 131 
#define  SIGDEFERSTOP_NOP 130 
#define  SIGDEFERSTOP_OFF 129 
#define  SIGDEFERSTOP_SILENT 128 
 int SIGDEFERSTOP_VAL_NCHG ; 
 int TDF_SBDRY ; 
 int TDF_SEINTR ; 
 int TDF_SERESTART ; 
 struct thread* curthread ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

int
FUNC4(int mode)
{
	struct thread *td;
	int cflags, nflags;

	td = curthread;
	cflags = FUNC1(td->td_flags);
	switch (mode) {
	case SIGDEFERSTOP_NOP:
		nflags = cflags;
		break;
	case SIGDEFERSTOP_OFF:
		nflags = 0;
		break;
	case SIGDEFERSTOP_SILENT:
		nflags = (cflags | TDF_SBDRY) & ~(TDF_SEINTR | TDF_SERESTART);
		break;
	case SIGDEFERSTOP_EINTR:
		nflags = (cflags | TDF_SBDRY | TDF_SEINTR) & ~TDF_SERESTART;
		break;
	case SIGDEFERSTOP_ERESTART:
		nflags = (cflags | TDF_SBDRY | TDF_SERESTART) & ~TDF_SEINTR;
		break;
	default:
		FUNC0("sigdeferstop: invalid mode %x", mode);
		break;
	}
	if (cflags == nflags)
		return (SIGDEFERSTOP_VAL_NCHG);
	FUNC2(td);
	td->td_flags = (td->td_flags & ~cflags) | nflags;
	FUNC3(td);
	return (cflags);
}