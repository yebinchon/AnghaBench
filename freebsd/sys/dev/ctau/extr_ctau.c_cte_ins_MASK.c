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
typedef  int port_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 unsigned char FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,unsigned char) ; 

unsigned char FUNC3 (port_t base, unsigned char reg,
	unsigned char mask)
{
	unsigned char val;
	port_t rw = FUNC0 (base & 0x3e0);

	FUNC2 (base, reg); FUNC2 (rw, mask);		/* lock bits */
	FUNC2 (base, reg); val = FUNC1 (rw) & mask;	/* get values */
	FUNC2 (base, reg); FUNC2 (rw, val);		/* unlock bits */
	return val;
}