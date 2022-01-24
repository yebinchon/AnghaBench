#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct consdev {TYPE_1__* cn_arg; int /*<<< orphan*/  cn_pri; int /*<<< orphan*/  cn_name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN_DEAD ; 
 int /*<<< orphan*/  CN_NORMAL ; 
 int /*<<< orphan*/  CN_REMOTE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int RB_SERIAL ; 
 int /*<<< orphan*/  UART_DEV_CONSOLE ; 
 int boothowto ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ uart_console ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  uart_driver_name ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC4(struct consdev *cp)
{

	cp->cn_pri = CN_DEAD;

	FUNC0(uart_console.cookie == NULL, ("foo"));

	if (FUNC2(UART_DEV_CONSOLE, &uart_console))
		return;

	if (FUNC3(&uart_console))
		return;

	FUNC1(cp->cn_name, uart_driver_name, sizeof(cp->cn_name));
	cp->cn_pri = (boothowto & RB_SERIAL) ? CN_REMOTE : CN_NORMAL;
	cp->cn_arg = &uart_console;
}