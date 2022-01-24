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
struct TYPE_2__ {scalar_t__ directive_count; } ;

/* Variables and functions */
 scalar_t__ COLL_WEIGHTS_MAX ; 
 TYPE_1__ collinfo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC1(void)
{
	if (collinfo.directive_count >= COLL_WEIGHTS_MAX) {
		FUNC0(stderr,"too many directives (max %ld)", COLL_WEIGHTS_MAX);
	}
	collinfo.directive_count++;
}