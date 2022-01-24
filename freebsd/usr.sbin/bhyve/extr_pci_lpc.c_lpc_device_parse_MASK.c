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
struct TYPE_2__ {char* opts; } ;

/* Variables and functions */
 int LPC_UART_NUM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char** lpc_uart_names ; 
 TYPE_1__* lpc_uart_softc ; 
 char* romfile ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 char* FUNC2 (char const*) ; 
 char* FUNC3 (char**,char*) ; 

int
FUNC4(const char *opts)
{
	int unit, error;
	char *str, *cpy, *lpcdev;

	error = -1;
	str = cpy = FUNC2(opts);
	lpcdev = FUNC3(&str, ",");
	if (lpcdev != NULL) {
		if (FUNC1(lpcdev, "bootrom") == 0) {
			romfile = str;
			error = 0;
			goto done;
		}
		for (unit = 0; unit < LPC_UART_NUM; unit++) {
			if (FUNC1(lpcdev, lpc_uart_names[unit]) == 0) {
				lpc_uart_softc[unit].opts = str;
				error = 0;
				goto done;
			}
		}
	}

done:
	if (error)
		FUNC0(cpy);

	return (error);
}