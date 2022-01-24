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
struct ess_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int DSP_READ ; 
 int FUNC1 (struct ess_info*,int) ; 

__attribute__((used)) static int
FUNC2(struct ess_info *sc)
{
    	int i;

    	for (i = 1000; i > 0; i--) {
		if (FUNC1(sc, 0xc) & 0x40)
			return FUNC1(sc, DSP_READ);
		else
			FUNC0(20);
    	}
    	return -1;
}