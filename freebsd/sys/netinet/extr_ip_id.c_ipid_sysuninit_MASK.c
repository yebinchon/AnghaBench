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

/* Variables and functions */
 int /*<<< orphan*/  M_IPID ; 
 int /*<<< orphan*/ * V_id_array ; 
 int /*<<< orphan*/ * V_id_bits ; 
 int /*<<< orphan*/  V_ip_id ; 
 int /*<<< orphan*/  V_ip_id_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(void)
{

	if (V_id_array != NULL) {
		FUNC1(V_id_array, M_IPID);
		FUNC1(V_id_bits, M_IPID);
	}
	FUNC0(V_ip_id);
	FUNC2(&V_ip_id_mtx);
}