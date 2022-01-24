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
struct intr_vector {int /*<<< orphan*/  iv_mid; struct intr_event* iv_event; void* iv_icarg; struct intr_controller const* iv_ic; } ;
struct intr_event {int dummy; } ;
struct intr_controller {int /*<<< orphan*/  ic_clear; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 int IV_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  intr_assign_cpu ; 
 int FUNC1 (struct intr_event**,struct intr_vector*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct intr_event*) ; 
 int /*<<< orphan*/  intr_table_lock ; 
 struct intr_vector* intr_vectors ; 
 int /*<<< orphan*/  mid ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int
FUNC5(int vec, const struct intr_controller *ic,
    void *icarg)
{
	struct intr_event *ie;
	struct intr_vector *iv;
	int error;

	if (vec < 0 || vec >= IV_MAX)
		return (EINVAL);
	FUNC3(&intr_table_lock);
	iv = &intr_vectors[vec];
	ie = iv->iv_event;
	FUNC4(&intr_table_lock);
	if (ie != NULL)
		return (EEXIST);
	error = FUNC1(&ie, iv, 0, vec, NULL, ic->ic_clear,
	    ic->ic_clear, intr_assign_cpu, "vec%d:", vec);
	if (error != 0)
		return (error);
	FUNC3(&intr_table_lock);
	if (iv->iv_event != NULL) {
		FUNC4(&intr_table_lock);
		FUNC2(ie);
		return (EEXIST);
	}
	iv->iv_ic = ic;
	iv->iv_icarg = icarg;
	iv->iv_event = ie;
	iv->iv_mid = FUNC0(mid);
	FUNC4(&intr_table_lock);
	return (0);
}