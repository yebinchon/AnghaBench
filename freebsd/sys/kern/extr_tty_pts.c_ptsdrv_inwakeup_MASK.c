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
struct tty {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  si_note; } ;
struct pts_softc {TYPE_1__ pts_inpoll; int /*<<< orphan*/  pts_inwait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct pts_softc* FUNC3 (struct tty*) ; 

__attribute__((used)) static void
FUNC4(struct tty *tp)
{
	struct pts_softc *psc = FUNC3(tp);

	FUNC1(&psc->pts_inwait);
	FUNC2(&psc->pts_inpoll);
	FUNC0(&psc->pts_inpoll.si_note, 0);
}