#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_char ;
struct tty {int dummy; } ;
struct termios {int dummy; } ;
struct com_s {int* cor; TYPE_1__* tp; } ;
struct TYPE_2__ {scalar_t__ t_hotchar; } ;

/* Variables and functions */
 int CD1400_CCR_CMDCORCHG ; 
 int CD1400_CCR_COR3 ; 
 int /*<<< orphan*/  CD1400_COR3 ; 
 int CD1400_COR3_SCD34 ; 
 int /*<<< orphan*/  CD1400_SCHR3 ; 
 int /*<<< orphan*/  CD1400_SCHR4 ; 
 int /*<<< orphan*/  FUNC0 (struct com_s*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct com_s*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 

__attribute__((used)) static void
FUNC3(struct tty *tp, struct termios *t, struct com_s *com)
{
#ifndef SOFT_HOTCHAR
	u_char	opt;
#endif

	FUNC2(tp);
#ifndef SOFT_HOTCHAR
	opt = com->cor[2] & ~CD1400_COR3_SCD34;
	if (com->tp->t_hotchar != 0) {
		FUNC1(com, CD1400_SCHR3, com->tp->t_hotchar);
		FUNC1(com, CD1400_SCHR4, com->tp->t_hotchar);
		opt |= CD1400_COR3_SCD34;
	}
	if (opt != com->cor[2]) {
		FUNC1(com, CD1400_COR3, com->cor[2] = opt);
		FUNC0(com, CD1400_CCR_CMDCORCHG | CD1400_CCR_COR3);
	}
#endif
}