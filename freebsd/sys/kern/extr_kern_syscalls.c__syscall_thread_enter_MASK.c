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
typedef  int u_int32_t ;
struct thread {int dummy; } ;
struct sysent {int sy_thrcnt; } ;

/* Variables and functions */
 int ENOSYS ; 
 int SY_THR_ABSENT ; 
 int SY_THR_DRAINING ; 
 int SY_THR_INCR ; 
 scalar_t__ FUNC0 (int*,int,int) ; 

int
FUNC1(struct thread *td, struct sysent *se)
{
	u_int32_t cnt, oldcnt;

	do {
		oldcnt = se->sy_thrcnt;
		if ((oldcnt & (SY_THR_DRAINING | SY_THR_ABSENT)) != 0)
			return (ENOSYS);
		cnt = oldcnt + SY_THR_INCR;
	} while (FUNC0(&se->sy_thrcnt, oldcnt, cnt) == 0);
	return (0);
}