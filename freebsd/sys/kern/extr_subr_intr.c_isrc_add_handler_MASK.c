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
struct intr_irqsrc {int /*<<< orphan*/ * isrc_event; } ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,void**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct intr_irqsrc*) ; 
 int FUNC3 (struct intr_irqsrc*) ; 
 int /*<<< orphan*/  isrc_table_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct intr_irqsrc *isrc, const char *name,
    driver_filter_t filter, driver_intr_t handler, void *arg,
    enum intr_type flags, void **cookiep)
{
	int error;

	if (isrc->isrc_event == NULL) {
		error = FUNC3(isrc);
		if (error)
			return (error);
	}

	error = FUNC0(isrc->isrc_event, name, filter, handler,
	    arg, FUNC1(flags), flags, cookiep);
	if (error == 0) {
		FUNC4(&isrc_table_lock);
		FUNC2(isrc);
		FUNC5(&isrc_table_lock);
	}

	return (error);
}