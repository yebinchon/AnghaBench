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
typedef  int /*<<< orphan*/  u_int ;
struct bhnd_core_match {int /*<<< orphan*/  member_0; } ;
struct bhnd_core_info {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct bhnd_core_info const* FUNC1 (struct bhnd_core_info const*,int /*<<< orphan*/ ,struct bhnd_core_match*) ; 

const struct bhnd_core_info *
FUNC2(const struct bhnd_core_info *cores, u_int num_cores,
    bhnd_devclass_t class)
{
	struct bhnd_core_match md = {
		FUNC0(class)
	};

	return FUNC1(cores, num_cores, &md);
}