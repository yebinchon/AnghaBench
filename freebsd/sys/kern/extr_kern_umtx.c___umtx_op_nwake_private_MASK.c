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
struct _umtx_op_args {int val; scalar_t__ obj; } ;

/* Variables and functions */
 int BATCH_SIZE ; 
 int /*<<< orphan*/  INT_MAX ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (char**,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(struct thread *td, struct _umtx_op_args *uap)
{
	char *uaddrs[BATCH_SIZE], **upp;
	int count, error, i, pos, tocopy;

	upp = (char **)uap->obj;
	error = 0;
	for (count = uap->val, pos = 0; count > 0; count -= tocopy,
	    pos += tocopy) {
		tocopy = FUNC0(count, BATCH_SIZE);
		error = FUNC1(upp + pos, uaddrs, tocopy * sizeof(char *));
		if (error != 0)
			break;
		for (i = 0; i < tocopy; ++i)
			FUNC2(td, uaddrs[i], INT_MAX, 1);
		FUNC3();
	}
	return (error);
}