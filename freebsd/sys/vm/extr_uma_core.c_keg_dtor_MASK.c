#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* uma_keg_t ;
struct TYPE_5__ {scalar_t__ uk_free; char* uk_name; int uk_pages; int /*<<< orphan*/  uk_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC5(void *arg, int size, void *udata)
{
	uma_keg_t keg;

	keg = (uma_keg_t)arg;
	FUNC0(keg);
	if (keg->uk_free != 0) {
		FUNC4("Freed UMA keg (%s) was not empty (%d items). "
		    " Lost %d pages of memory.\n",
		    keg->uk_name ? keg->uk_name : "",
		    keg->uk_free, keg->uk_pages);
	}
	FUNC2(keg);

	FUNC3(&keg->uk_hash);

	FUNC1(keg);
}