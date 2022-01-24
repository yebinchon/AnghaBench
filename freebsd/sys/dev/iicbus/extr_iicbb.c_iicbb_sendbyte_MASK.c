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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev, u_char data, int timeout)
{
	int i;

	for (i=7; i>=0; i--) {
		if (data&(1<<i)) {
			FUNC1(dev, timeout);
		} else {
			FUNC2(dev, timeout);
		}
	}
	FUNC0(FUNC3("w%02x",(int)data));
	return;
}