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
typedef  int /*<<< orphan*/  uint32_t ;
struct devstat {int unit_number; int /*<<< orphan*/  creation_time; void const* id; } ;
typedef  int /*<<< orphan*/  devstat_type_flags ;
typedef  int /*<<< orphan*/  devstat_support_flags ;
typedef  int /*<<< orphan*/  devstat_priority ;

/* Variables and functions */
 int /*<<< orphan*/  MA_NOTOWNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct devstat*,void const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct devstat* FUNC2 () ; 
 int /*<<< orphan*/  devstat_generation ; 
 int /*<<< orphan*/  devstat_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct devstat *
FUNC6(const void *dev_name,
		  int unit_number, uint32_t block_size,
		  devstat_support_flags flags,
		  devstat_type_flags device_type,
		  devstat_priority priority)
{
	struct devstat *ds;

	FUNC3(&devstat_mutex, MA_NOTOWNED);

	ds = FUNC2();
	FUNC4(&devstat_mutex);
	if (unit_number == -1) {
		ds->unit_number = unit_number;
		ds->id = dev_name;
		FUNC0(&ds->creation_time);
		devstat_generation++;
	} else {
		FUNC1(ds, dev_name, unit_number, block_size,
				  flags, device_type, priority);
	}
	FUNC5(&devstat_mutex);
	return (ds);
}