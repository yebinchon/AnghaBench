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
union savefpu {int /*<<< orphan*/  sv_xmm; } ;
struct thread {int dummy; } ;
struct fpacc87 {int dummy; } ;
struct env87 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (union savefpu*,void*,int) ; 
 scalar_t__ cpu_fxsr ; 
 struct thread* curthread ; 
 union savefpu* FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct thread*) ; 

void
FUNC4(void *addr)
{
	struct thread *td;
	union savefpu *sv;

	td = curthread;
	FUNC3(td);
	sv = FUNC1(td);
	if (cpu_fxsr)
		FUNC2(&sv->sv_xmm, addr);
	else
		FUNC0(sv, addr, sizeof(struct env87) +
		    sizeof(struct fpacc87[8]));
}