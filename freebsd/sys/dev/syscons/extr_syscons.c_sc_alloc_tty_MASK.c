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
struct tty {int dummy; } ;
struct sc_ttysoftc {int st_index; int /*<<< orphan*/ * st_stat; } ;

/* Variables and functions */
 int /*<<< orphan*/  Giant ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct sc_ttysoftc* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sc_ttydevsw ; 
 struct tty* FUNC1 (int /*<<< orphan*/ *,struct sc_ttysoftc*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static struct tty *
FUNC3(int index, int devnum)
{
	struct sc_ttysoftc *stc;
	struct tty *tp;

	/* Allocate TTY object and softc to store unit number. */
	stc = FUNC0(sizeof(struct sc_ttysoftc), M_DEVBUF, M_WAITOK);
	stc->st_index = index;
	stc->st_stat = NULL;
	tp = FUNC1(&sc_ttydevsw, stc, &Giant);

	/* Create device node. */
	FUNC2(tp, NULL, "v%r", devnum);

	return (tp);
}