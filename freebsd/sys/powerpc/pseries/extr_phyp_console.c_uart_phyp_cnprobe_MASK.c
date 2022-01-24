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
struct uart_phyp_softc {int node; int /*<<< orphan*/  sc_mtx; } ;
struct consdev {int /*<<< orphan*/  cn_pri; } ;
typedef  int /*<<< orphan*/  stdout ;
typedef  int phandle_t ;
typedef  scalar_t__ ihandle_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CN_DEAD ; 
 int /*<<< orphan*/  CN_NORMAL ; 
 int MTX_NOWITNESS ; 
 int MTX_QUIET ; 
 int MTX_SPIN ; 
 int FUNC0 (char*) ; 
 int FUNC1 (int,char*,scalar_t__*,int) ; 
 int FUNC2 (int,char*,char*,int) ; 
 int FUNC3 (scalar_t__) ; 
 struct uart_phyp_softc* console_sc ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (struct uart_phyp_softc*) ; 

__attribute__((used)) static void
FUNC7(struct consdev *cp)
{
	char buf[64];
	ihandle_t stdout;
	phandle_t input, chosen;
	static struct uart_phyp_softc sc;

	if ((chosen = FUNC0("/chosen")) == -1)
		goto fail;

	/* Check if OF has an active stdin/stdout */
	input = -1;
	if (FUNC1(chosen, "stdout", &stdout,
	    sizeof(stdout)) == sizeof(stdout) && stdout != 0)
		input = FUNC3(stdout);
	if (input == -1)
		goto fail;

	if (FUNC2(input, "device_type", buf, sizeof(buf)) == -1)
		goto fail;
	if (FUNC5(buf, "serial") != 0)
		goto fail;

	sc.node = input;
	if (FUNC6(&sc) != 0)
		goto fail;
	FUNC4(&sc.sc_mtx, "uart_phyp", NULL, MTX_SPIN | MTX_QUIET |
	    MTX_NOWITNESS);

	cp->cn_pri = CN_NORMAL;
	console_sc = &sc;
	return;
	
fail:
	cp->cn_pri = CN_DEAD;
	return;
}