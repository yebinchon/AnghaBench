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
typedef  size_t u_char ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CLPIP_SHAKE ; 
 int* ctrecvh ; 
 int* ctrecvl ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline int
FUNC2(int spin, device_t ppbus)
{
	u_char c, cl;

	while ((FUNC0(ppbus) & CLPIP_SHAKE))
		if (!--spin) {
			return (-1);
		}
	cl = FUNC0(ppbus);
	FUNC1(ppbus, 0x10);

	while (!(FUNC0(ppbus) & CLPIP_SHAKE))
		if (!--spin) {
			return (-1);
		}
	c = FUNC0(ppbus);
	FUNC1(ppbus, 0x00);

	return (ctrecvl[cl] | ctrecvh[c]);
}