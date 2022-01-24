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
 int LSB ; 
 int FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int*,int /*<<< orphan*/ ) ; 

int
FUNC3(device_t bus, u_char slave, char *buf, int len, int *sent)
{
	u_char addr = slave & ~LSB;
	int error;

	if ((error = FUNC0(bus, addr, 0)))
		return (error);

	error = FUNC2(bus, buf, len, sent, 0);

	FUNC1(bus);

	return (error);
}