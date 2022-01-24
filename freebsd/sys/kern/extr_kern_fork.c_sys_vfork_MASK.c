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
struct vfork_args {int dummy; } ;
struct thread {int* td_retval; } ;
struct fork_req {int fr_flags; int* fr_pidp; } ;
typedef  int /*<<< orphan*/  fr ;

/* Variables and functions */
 int RFFDG ; 
 int RFMEM ; 
 int RFPPWAIT ; 
 int RFPROC ; 
 int /*<<< orphan*/  FUNC0 (struct fork_req*,int) ; 
 int FUNC1 (struct thread*,struct fork_req*) ; 

int
FUNC2(struct thread *td, struct vfork_args *uap)
{
	struct fork_req fr;
	int error, pid;

	FUNC0(&fr, sizeof(fr));
	fr.fr_flags = RFFDG | RFPROC | RFPPWAIT | RFMEM;
	fr.fr_pidp = &pid;
	error = FUNC1(td, &fr);
	if (error == 0) {
		td->td_retval[0] = pid;
		td->td_retval[1] = 0;
	}
	return (error);
}