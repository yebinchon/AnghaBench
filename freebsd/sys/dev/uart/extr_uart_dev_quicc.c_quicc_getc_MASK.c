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
typedef  int uint16_t ;
struct uart_bas {scalar_t__ chan; } ;
struct mtx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__) ; 
 int FUNC2 (struct uart_bas*,int) ; 
 scalar_t__ FUNC3 (struct uart_bas*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_bas*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtx*) ; 

__attribute__((used)) static int
FUNC7(struct uart_bas *bas, struct mtx *hwmtx)
{
	volatile char *buf;
	int c;
	uint16_t rb, sc;

	FUNC5(hwmtx);

	rb = FUNC2(bas, FUNC1(bas->chan - 1));

	while ((sc = FUNC2(bas, rb)) & 0x8000) {
		FUNC6(hwmtx);
		FUNC0(4);
		FUNC5(hwmtx);
	}

	buf = (void *)(uintptr_t)FUNC3(bas, rb + 4);
	c = *buf;
	FUNC4(bas, rb, sc | 0x8000);

	FUNC6(hwmtx);

	return (c);
}