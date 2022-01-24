#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct intr_vector {TYPE_1__* iv_event; } ;
struct TYPE_2__ {int /*<<< orphan*/  ie_fullname; } ;

/* Variables and functions */
 int EINVAL ; 
 int IV_MAX ; 
 int FUNC0 (TYPE_1__*,void*,char const*) ; 
 int /*<<< orphan*/  intr_table_lock ; 
 struct intr_vector* intr_vectors ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int
FUNC4(int vec, void *ih, const char *descr)
{
	struct intr_vector *iv;
	int error;

	if (vec < 0 || vec >= IV_MAX)
		return (EINVAL);
	FUNC2(&intr_table_lock);
	iv = &intr_vectors[vec];
	if (iv == NULL) {
		FUNC3(&intr_table_lock);
		return (EINVAL);
	}
	error = FUNC0(iv->iv_event, ih, descr);
	if (error) {
		FUNC3(&intr_table_lock);
		return (error);
	}
	FUNC1(vec, iv->iv_event->ie_fullname, 0);
	FUNC3(&intr_table_lock);
	return (error);
}