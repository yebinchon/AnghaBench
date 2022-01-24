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

/* Variables and functions */
 size_t LPC_UART_NUM ; 
 char** lpc_uart_names ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

void
FUNC1()
{
	size_t i;

	FUNC0("bootrom\n");
	for (i = 0; i < LPC_UART_NUM; i++)
		FUNC0("%s\n", lpc_uart_names[i]);
}