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
typedef  int /*<<< orphan*/  sli4_t ;
typedef  int int32_t ;

/* Variables and functions */
 int FALSE ; 
 int SLI4_INIT_PORT_DELAY_US ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int32_t
FUNC2(sli4_t *sli4, uint32_t timeout_ms)
{
	uint32_t	iter = timeout_ms / (SLI4_INIT_PORT_DELAY_US / 1000);
	uint32_t	ready = FALSE;

	do {
		iter--;
		FUNC0(SLI4_INIT_PORT_DELAY_US);
		if (FUNC1(sli4) == 1) {
			ready = TRUE;
		}
	} while (!ready && (iter > 0));

	return ready;
}