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
struct dcons_softc {struct tty* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  dcons_close_refs ; 
 struct dcons_softc* sc ; 
 int /*<<< orphan*/  FUNC1 (struct tty*) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*) ; 

__attribute__((used)) static int
FUNC3(int port)
{
	struct	tty *tp;
	struct dcons_softc *dc;

	dc = &sc[port];
	tp = dc->tty;

	/* tty_rel_gone() schedules a deferred free callback, count it. */
	FUNC0(&dcons_close_refs, 1);
	FUNC1(tp);
	FUNC2(tp);

	return(0);
}