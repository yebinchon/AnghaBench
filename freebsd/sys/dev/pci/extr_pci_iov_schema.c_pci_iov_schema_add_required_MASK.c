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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int IOV_SCHEMA_HASDEFAULT ; 
 int IOV_SCHEMA_REQUIRED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(nvlist_t *entry, uint32_t flags)
{

	if (flags & IOV_SCHEMA_REQUIRED) {
		if (flags & IOV_SCHEMA_HASDEFAULT) {
			FUNC1(entry, EINVAL);
			return;
		}

		FUNC0(entry, "required", 1);
	}
}