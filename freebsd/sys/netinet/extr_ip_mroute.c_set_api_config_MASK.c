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
typedef  int uint32_t ;
typedef  size_t u_long ;

/* Variables and functions */
 int EPERM ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * V_mfchashtbl ; 
 int V_mrt_api_config ; 
 scalar_t__ V_numvifs ; 
 scalar_t__ V_pim_assert_enabled ; 
 size_t mfchashsize ; 
 int mrt_api_support ; 

int
FUNC3(uint32_t *apival)
{
    u_long i;

    /*
     * We can set the API capabilities only if it is the first operation
     * after MRT_INIT. I.e.:
     *  - there are no vifs installed
     *  - pim_assert is not enabled
     *  - the MFC table is empty
     */
    if (V_numvifs > 0) {
	*apival = 0;
	return EPERM;
    }
    if (V_pim_assert_enabled) {
	*apival = 0;
	return EPERM;
    }

    FUNC1();

    for (i = 0; i < mfchashsize; i++) {
	if (FUNC0(&V_mfchashtbl[i]) != NULL) {
	    FUNC2();
	    *apival = 0;
	    return EPERM;
	}
    }

    FUNC2();

    V_mrt_api_config = *apival & mrt_api_support;
    *apival = V_mrt_api_config;

    return 0;
}