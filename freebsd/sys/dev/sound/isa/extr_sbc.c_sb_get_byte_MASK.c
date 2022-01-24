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
typedef  int u_int ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DSP_DATA_AVAIL ; 
 int /*<<< orphan*/  DSP_READ ; 
 int FUNC1 (struct resource*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int
FUNC2(struct resource *io)
{
    	int i;

    	for (i = 1000; i > 0; i--) {
		if (FUNC1(io, DSP_DATA_AVAIL) & 0x80)
			return FUNC1(io, DSP_READ);
		else
			FUNC0(20);
    	}
    	return 0xffff;
}