#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct thread {int /*<<< orphan*/  td_proc; } ;
struct TYPE_4__ {int ksi_signo; int /*<<< orphan*/  ksi_code; } ;
typedef  TYPE_1__ ksiginfo_t ;

/* Variables and functions */
 int /*<<< orphan*/  SI_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct thread*,int,TYPE_1__*) ; 

void
FUNC2(struct thread *td, int sig)
{
	ksiginfo_t ksi;

	FUNC0(&ksi);
	ksi.ksi_signo = sig;
	ksi.ksi_code = SI_KERNEL;
	(void) FUNC1(td->td_proc, td, sig, &ksi);
}