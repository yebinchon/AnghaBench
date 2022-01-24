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
struct intr_vector {scalar_t__ iv_refcnt; } ;

/* Variables and functions */
 int EINVAL ; 
 int IV_MAX ; 
 int /*<<< orphan*/  PIL_LOW ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  intr_fast ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct intr_vector*) ; 
 int /*<<< orphan*/  intr_stray_vector ; 
 int /*<<< orphan*/  intr_table_lock ; 
 struct intr_vector* intr_vectors ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(int vec, void *cookie)
{
	struct intr_vector *iv;
	int error;

	if (vec < 0 || vec >= IV_MAX)
		return (EINVAL);
	error = FUNC0(cookie);
	if (error == 0) {
		/*
		 * XXX: maybe this should be done regardless of whether
		 * intr_event_remove_handler() succeeded?
		 */
		FUNC2(&intr_table_lock);
		iv = &intr_vectors[vec];
		iv->iv_refcnt--;
		if (iv->iv_refcnt == 0) {
			/*
			 * Don't disable the interrupt for now, so that
			 * stray interrupts get detected...
			 */
			FUNC1(PIL_LOW, intr_fast, vec,
			    intr_stray_vector, iv);
		}
		FUNC3(&intr_table_lock);
	}
	return (error);
}