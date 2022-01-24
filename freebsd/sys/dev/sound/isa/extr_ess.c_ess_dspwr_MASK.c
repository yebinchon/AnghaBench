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
struct ess_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SBDSP_CMD ; 
 scalar_t__ FUNC1 (struct ess_info*) ; 
 int /*<<< orphan*/  FUNC2 (struct ess_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4(struct ess_info *sc, u_char val)
{
    	int  i;

    	for (i = 0; i < 1000; i++) {
		if (FUNC1(sc)) {
	    		FUNC2(sc, SBDSP_CMD, val);
	    		return 1;
		}
		if (i > 10) FUNC0((i > 100)? 1000 : 10);
    	}
    	FUNC3("ess_dspwr(0x%02x) timed out.\n", val);
    	return 0;
}