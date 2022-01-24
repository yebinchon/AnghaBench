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
 int UART_PARITY_EVEN ; 
 int UART_PARITY_MARK ; 
 int UART_PARITY_NONE ; 
 int UART_PARITY_ODD ; 
 int UART_PARITY_SPACE ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC1(const char **p)
{
	if (!FUNC0(*p, "even", 4)) {
		*p += 4;
		return UART_PARITY_EVEN;
	}
	if (!FUNC0(*p, "mark", 4)) {
		*p += 4;
		return UART_PARITY_MARK;
	}
	if (!FUNC0(*p, "none", 4)) {
		*p += 4;
		return UART_PARITY_NONE;
	}
	if (!FUNC0(*p, "odd", 3)) {
		*p += 3;
		return UART_PARITY_ODD;
	}
	if (!FUNC0(*p, "space", 5)) {
		*p += 5;
		return UART_PARITY_SPACE;
	}
	return (-1);
}