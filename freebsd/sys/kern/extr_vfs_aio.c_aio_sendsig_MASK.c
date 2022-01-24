#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread {int dummy; } ;
struct sigevent {int dummy; } ;
struct proc {int dummy; } ;
struct TYPE_6__ {int ksi_flags; int /*<<< orphan*/  ksi_signo; int /*<<< orphan*/  ksi_code; } ;
typedef  TYPE_1__ ksiginfo_t ;

/* Variables and functions */
 int KSI_EXT ; 
 int KSI_INS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct proc*) ; 
 int /*<<< orphan*/  SI_ASYNCIO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct sigevent*) ; 
 int FUNC3 (struct proc*,struct sigevent*,struct thread**) ; 
 int /*<<< orphan*/  FUNC4 (struct proc*,struct thread*,int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC5(struct proc *p, struct sigevent *sigev, ksiginfo_t *ksi)
{
	struct thread *td;
	int error;

	error = FUNC3(p, sigev, &td);
	if (error)
		return (error);
	if (!FUNC0(ksi)) {
		FUNC2(ksi, sigev);
		ksi->ksi_code = SI_ASYNCIO;
		ksi->ksi_flags |= KSI_EXT | KSI_INS;
		FUNC4(p, td, ksi->ksi_signo, ksi);
	}
	FUNC1(p);
	return (error);
}