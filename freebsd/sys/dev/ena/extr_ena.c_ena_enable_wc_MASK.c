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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct resource {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENA_ALERT ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  VM_MEMATTR_WRITE_COMBINING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct resource*) ; 
 scalar_t__ FUNC3 (struct resource*) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int
FUNC5(struct resource *res)
{
#if defined(__i386) || defined(__amd64) || defined(__aarch64__)
	vm_offset_t va;
	vm_size_t len;
	int rc;

	va = (vm_offset_t)FUNC3(res);
	len = FUNC2(res);
	/* Enable write combining */
	rc = FUNC1(va, len, VM_MEMATTR_WRITE_COMBINING);
	if (FUNC4(rc != 0)) {
		FUNC0(ENA_ALERT, "pmap_change_attr failed, %d\n", rc);
		return (rc);
	}

	return (0);
#endif
	return (EOPNOTSUPP);
}