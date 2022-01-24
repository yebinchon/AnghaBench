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
struct cache_entry_ {int dummy; } ;
typedef  enum cache_transformation_t { ____Placeholder_cache_transformation_t } cache_transformation_t ;

/* Variables and functions */
#define  CTT_CLEAR 129 
#define  CTT_FLUSH 128 
 int /*<<< orphan*/  FUNC0 (int (*) (struct cache_entry_*,int)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (struct cache_entry_*,int)) ; 
 int /*<<< orphan*/  FUNC2 (struct cache_entry_*) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry_*) ; 

int
FUNC4(struct cache_entry_ *entry,
	enum cache_transformation_t transformation)
{

	FUNC0(transform_cache_entry);
	switch (transformation) {
	case CTT_CLEAR:
		FUNC2(entry);
		FUNC1(transform_cache_entry);
		return (0);
	case CTT_FLUSH:
		FUNC3(entry);
		FUNC1(transform_cache_entry);
		return (0);
	default:
		FUNC1(transform_cache_entry);
		return (-1);
	}
}