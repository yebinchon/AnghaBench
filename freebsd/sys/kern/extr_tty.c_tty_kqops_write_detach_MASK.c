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
struct tty {TYPE_1__ t_outpoll; } ;
struct knote {struct tty* kn_hook; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC1(struct knote *kn)
{
	struct tty *tp = kn->kn_hook;

	FUNC0(&tp->t_outpoll.si_note, kn, 0);
}