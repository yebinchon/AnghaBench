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
struct uart_bas {int chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct uart_bas*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_bas*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(struct uart_bas *bas, int c)
{
	int unit;
	uint16_t toseq;

	unit = bas->chan - 1;
	while (FUNC2(bas, FUNC1(unit)) & 0x2000)
		FUNC0(10);

	toseq = 0x2000 | (c & 0xff);
	FUNC3(bas, FUNC1(unit), toseq);
}