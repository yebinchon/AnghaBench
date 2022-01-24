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
typedef  union descriptor {int dummy; } descriptor ;
typedef  int u_int ;
struct thread {int* td_retval; TYPE_2__* td_proc; } ;
struct proc_ldt {int ldt_len; scalar_t__ ldt_base; } ;
struct i386_ldt_args {int start; int num; scalar_t__ descs; } ;
struct TYPE_3__ {struct proc_ldt* md_ldt; } ;
struct TYPE_4__ {TYPE_1__ p_md; } ;

/* Variables and functions */
 int MAX_LD ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NLDT ; 
 int /*<<< orphan*/  FUNC0 (union descriptor*,char*,int) ; 
 int FUNC1 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  dt_lock ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 union descriptor* ldt ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,int,void*) ; 

int
FUNC8(struct thread *td, struct i386_ldt_args *uap)
{
	struct proc_ldt *pldt;
	char *data;
	u_int nldt, num;
	int error;

#ifdef DEBUG
	printf("i386_get_ldt: start=%u num=%u descs=%p\n",
	    uap->start, uap->num, (void *)uap->descs);
#endif

	num = FUNC4(uap->num, MAX_LD);
	data = FUNC3(num * sizeof(union descriptor), M_TEMP, M_WAITOK);
	FUNC5(&dt_lock);
	pldt = td->td_proc->p_md.md_ldt;
	nldt = pldt != NULL ? pldt->ldt_len : NLDT;
	if (uap->start >= nldt) {
		num = 0;
	} else {
		num = FUNC4(num, nldt - uap->start);
		FUNC0(pldt != NULL ?
		    &((union descriptor *)(pldt->ldt_base))[uap->start] :
		    &ldt[uap->start], data, num * sizeof(union descriptor));
	}
	FUNC6(&dt_lock);
	error = FUNC1(data, uap->descs, num * sizeof(union descriptor));
	if (error == 0)
		td->td_retval[0] = num;
	FUNC2(data, M_TEMP);
	return (error);
}