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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  new_id ;

/* Variables and functions */
 size_t V_array_ptr ; 
 size_t V_array_size ; 
 scalar_t__* V_id_array ; 
 int /*<<< orphan*/  V_id_bits ; 
 int /*<<< orphan*/  V_ip_id_mtx ; 
 int /*<<< orphan*/  V_random_id_collisions ; 
 int /*<<< orphan*/  V_random_id_total ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint16_t
FUNC6(void)
{
	uint16_t new_id;

	FUNC4(&V_ip_id_mtx);
	/*
	 * To avoid a conflict with the zeros that the array is initially
	 * filled with, we never hand out an id of zero.
	 */
	new_id = 0;
	do {
		if (new_id != 0)
			V_random_id_collisions++;
		FUNC0(&new_id, sizeof(new_id), 0);
	} while (FUNC3(V_id_bits, new_id) || new_id == 0);
	FUNC1(V_id_bits, V_id_array[V_array_ptr]);
	FUNC2(V_id_bits, new_id);
	V_id_array[V_array_ptr] = new_id;
	V_array_ptr++;
	if (V_array_ptr == V_array_size)
		V_array_ptr = 0;
	V_random_id_total++;
	FUNC5(&V_ip_id_mtx);
	return (new_id);
}