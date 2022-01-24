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
typedef  int uint8_t ;
typedef  int u_int ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev, u_int s, u_int c, int t)
{
	int timeout = 0;
	uint8_t st;

	while (((st =  FUNC2(dev, 0)) & (s | c)) != s) {
		if (timeout >= t) {
			if (t != 0)
				FUNC1(dev, "Wait status %02x\n", st);
			return (-1);
		}
		FUNC0(1000);
		timeout++;
	} 
	return (timeout);
}