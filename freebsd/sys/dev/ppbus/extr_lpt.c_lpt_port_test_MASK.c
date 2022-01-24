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
typedef  int u_char ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(device_t ppbus, u_char data, u_char mask)
{
	int	temp, timeout;

	data = data & mask;
	FUNC3(ppbus, data);
	timeout = 10000;
	do {
		FUNC0(10);
		temp = FUNC2(ppbus) & mask;
	}
	while (temp != data && --timeout);
	FUNC1(("out=%x\tin=%x\ttout=%d\n", data, temp, timeout));
	return (temp == data);
}