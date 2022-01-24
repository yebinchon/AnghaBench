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
struct dcons_softc {int flags; struct tty* tty; } ;

/* Variables and functions */
 int /*<<< orphan*/  dcons_ttydevsw ; 
 struct dcons_softc* sc ; 
 struct tty* FUNC0 (int /*<<< orphan*/ *,struct dcons_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct tty*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct tty*,int /*<<< orphan*/ *,char*,char*) ; 

__attribute__((used)) static int
FUNC3(int port, char *name, int flags)
{
	struct dcons_softc *dc;
	struct tty *tp;

	dc = &sc[port];
	tp = FUNC0(&dcons_ttydevsw, dc);
	dc->flags = flags;
	dc->tty   = tp;
	FUNC1(tp, 0);
	FUNC2(tp, NULL, "%s", name);
	return(0);
}