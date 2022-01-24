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
typedef  int /*<<< orphan*/  vm_page_t ;
struct kcov_info {scalar_t__ kvaddr; size_t bufsize; int /*<<< orphan*/ * bufobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_KCOV_INFO ; 
 size_t PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kcov_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct kcov_info *info)
{
	vm_page_t m;
	size_t i;

	if (info->kvaddr != 0) {
		FUNC4(info->kvaddr, info->bufsize / PAGE_SIZE);
		FUNC3(info->kvaddr, info->bufsize);
	}
	if (info->bufobj != NULL) {
		FUNC0(info->bufobj);
		m = FUNC6(info->bufobj, 0);
		for (i = 0; i < info->bufsize / PAGE_SIZE; i++) {
			FUNC8(m);
			m = FUNC7(m);
		}
		FUNC1(info->bufobj);
		FUNC5(info->bufobj);
	}
	FUNC2(info, M_KCOV_INFO);
}