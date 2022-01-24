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
struct uart_opal_softc {int node; int /*<<< orphan*/  sc_mtx; } ;
struct consdev {int /*<<< orphan*/  cn_pri; struct uart_opal_softc* cn_arg; } ;
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CN_DEAD ; 
 int /*<<< orphan*/  CN_NORMAL ; 
 int MTX_NOWITNESS ; 
 int MTX_QUIET ; 
 int MTX_SPIN ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,char*,char*,int) ; 
 struct uart_opal_softc* console_sc ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 () ; 
 struct consdev* stdout_cp ; 
 scalar_t__ FUNC4 (struct uart_opal_softc*) ; 

__attribute__((used)) static void
FUNC5(struct consdev *cp)
{
	char buf[64];
	phandle_t input, chosen;
	static struct uart_opal_softc sc;

	if (FUNC3() != 0)
		goto fail;

	if ((chosen = FUNC0("/chosen")) == -1)
		goto fail;

	/* Check if OF has an active stdin/stdout */
	if (FUNC1(chosen, "linux,stdout-path", buf, sizeof(buf)) <= 0)
		goto fail;
	
	input = FUNC0(buf);
	if (input == -1)
		goto fail;

	sc.node = input;
	if (FUNC4(&sc) != 0)
		goto fail;
	FUNC2(&sc.sc_mtx, "uart_opal", NULL, MTX_SPIN | MTX_QUIET |
	    MTX_NOWITNESS);

	cp->cn_pri = CN_NORMAL;
	console_sc = &sc;
	cp->cn_arg = console_sc;
	stdout_cp = cp;
	return;
	
fail:
	cp->cn_pri = CN_DEAD;
	return;
}