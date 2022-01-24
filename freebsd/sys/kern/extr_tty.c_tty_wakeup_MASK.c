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
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct tty {int t_flags; TYPE_1__ t_inpoll; int /*<<< orphan*/  t_inwait; TYPE_1__ t_outpoll; int /*<<< orphan*/  t_outwait; int /*<<< orphan*/ * t_session; int /*<<< orphan*/ * t_sigio; } ;

/* Variables and functions */
 int FREAD ; 
 int FWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGIO ; 
 int TF_ASYNC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

void
FUNC4(struct tty *tp, int flags)
{

	if (tp->t_flags & TF_ASYNC && tp->t_sigio != NULL)
		FUNC2(&tp->t_sigio, SIGIO, (tp->t_session != NULL));

	if (flags & FWRITE) {
		FUNC1(&tp->t_outwait);
		FUNC3(&tp->t_outpoll);
		FUNC0(&tp->t_outpoll.si_note, 0);
	}
	if (flags & FREAD) {
		FUNC1(&tp->t_inwait);
		FUNC3(&tp->t_inpoll);
		FUNC0(&tp->t_inpoll.si_note, 0);
	}
}