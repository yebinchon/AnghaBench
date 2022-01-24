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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  bitstr_t ;

/* Variables and functions */
 int /*<<< orphan*/  M_IPID ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 scalar_t__ V_array_ptr ; 
 int V_array_size ; 
 int /*<<< orphan*/ * V_id_array ; 
 int /*<<< orphan*/ * V_id_bits ; 
 int /*<<< orphan*/  V_ip_id_mtx ; 
 scalar_t__ V_random_id_collisions ; 
 scalar_t__ V_random_id_total ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(int new_size)
{
	uint16_t *new_array;
	bitstr_t *new_bits;

	new_array = FUNC2(new_size * sizeof(uint16_t), M_IPID,
	    M_WAITOK | M_ZERO);
	new_bits = FUNC2(FUNC0(65536), M_IPID, M_WAITOK | M_ZERO);

	FUNC3(&V_ip_id_mtx);
	if (V_id_array != NULL) {
		FUNC1(V_id_array, M_IPID);
		FUNC1(V_id_bits, M_IPID);
	}
	V_id_array = new_array;
	V_id_bits = new_bits;
	V_array_size = new_size;
	V_array_ptr = 0;
	V_random_id_collisions = 0;
	V_random_id_total = 0;
	FUNC4(&V_ip_id_mtx);
}