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
typedef  int /*<<< orphan*/  vm_object_t ;
struct domainset {int dummy; } ;

/* Variables and functions */
 struct domainset* FUNC0 (int) ; 
 struct domainset* FUNC1 () ; 
 int UMA_ANYDOMAIN ; 
 int /*<<< orphan*/  kstack_pages ; 
 scalar_t__ FUNC2 (struct domainset*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(void *arg, void **store, int cnt, int domain, int flags)
{
	struct domainset *ds;
	vm_object_t ksobj;
	int i;

	if (domain == UMA_ANYDOMAIN)
		ds = FUNC1();
	else
		ds = FUNC0(domain);

	for (i = 0; i < cnt; i++) {
		store[i] = (void *)FUNC2(ds, &ksobj,
		    kstack_pages);
		if (store[i] == NULL)
			break;
	}
	return (i);
}