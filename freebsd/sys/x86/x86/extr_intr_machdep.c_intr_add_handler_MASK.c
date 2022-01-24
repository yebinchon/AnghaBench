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
struct intsrc {int is_handlers; int is_domain; TYPE_1__* is_pic; int /*<<< orphan*/  is_event; } ;
typedef  enum intr_type { ____Placeholder_intr_type } intr_type ;
typedef  int /*<<< orphan*/  driver_intr_t ;
typedef  int /*<<< orphan*/  driver_filter_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* pic_enable_source ) (struct intsrc*) ;int /*<<< orphan*/  (* pic_enable_intr ) (struct intsrc*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,void**) ; 
 struct intsrc* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct intsrc*) ; 
 int /*<<< orphan*/  intrsrc_lock ; 
 int /*<<< orphan*/  FUNC4 (struct intsrc*) ; 
 int /*<<< orphan*/  FUNC5 (struct intsrc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int
FUNC8(const char *name, int vector, driver_filter_t filter,
    driver_intr_t handler, void *arg, enum intr_type flags, void **cookiep,
    int domain)
{
	struct intsrc *isrc;
	int error;

	isrc = FUNC1(vector);
	if (isrc == NULL)
		return (EINVAL);
	error = FUNC0(isrc->is_event, name, filter, handler,
	    arg, FUNC2(flags), flags, cookiep);
	if (error == 0) {
		FUNC6(&intrsrc_lock);
		FUNC3(isrc);
		isrc->is_handlers++;
		if (isrc->is_handlers == 1) {
			isrc->is_domain = domain;
			isrc->is_pic->pic_enable_intr(isrc);
			isrc->is_pic->pic_enable_source(isrc);
		}
		FUNC7(&intrsrc_lock);
	}
	return (error);
}