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
struct ksem {int /*<<< orphan*/  ks_cv; int /*<<< orphan*/  ks_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_KSEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ksem*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ksem_count_lock ; 
 int /*<<< orphan*/  FUNC2 (struct ksem*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nsems ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(struct ksem *ks)
{

	if (FUNC5(&ks->ks_ref)) {
#ifdef MAC
		mac_posixsem_destroy(ks);
#endif
		FUNC0(&ks->ks_cv);
		FUNC1(ks, M_KSEM);
		FUNC3(&ksem_count_lock);
		nsems--;
		FUNC4(&ksem_count_lock);
	}
}