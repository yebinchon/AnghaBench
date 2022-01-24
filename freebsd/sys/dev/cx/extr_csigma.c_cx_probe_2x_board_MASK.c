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
typedef  int /*<<< orphan*/  port_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int BSR2X_REV_MASK ; 
 int BSR2X_VAR_MASK ; 
 int CRONYX_22 ; 
 int CRONYX_24 ; 
 int FUNC1 (scalar_t__) ; 

__attribute__((used)) static int FUNC2 (port_t port)
{
	int rev, i;

	/* Read and check the board revision code. */
	rev = FUNC1 (FUNC0(port));
	if ((rev & BSR2X_VAR_MASK) != CRONYX_22 &&
	    (rev & BSR2X_VAR_MASK) != CRONYX_24)
		return (0);		/* invalid variant code */

	for (i=2; i<0x10; i+=2)
		if ((FUNC1 (FUNC0(port)+i) & BSR2X_REV_MASK) !=
		    (rev & BSR2X_REV_MASK))
			return (0);	/* status changed? */
	return (1);
}