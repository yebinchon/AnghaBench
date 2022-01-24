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
 int /*<<< orphan*/ * ctxmith ; 
 int /*<<< orphan*/ * ctxmitl ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC2(u_char byte, int spin, device_t ppbus)
{

	FUNC1(ppbus, ctxmitl[byte]);
	while (FUNC0(ppbus) & CLPIP_SHAKE)
		if (--spin == 0) {
			return (1);
		}
	FUNC1(ppbus, ctxmith[byte]);
	while (!(FUNC0(ppbus) & CLPIP_SHAKE))
		if (--spin == 0) {
			return (1);
		}
	return (0);
}