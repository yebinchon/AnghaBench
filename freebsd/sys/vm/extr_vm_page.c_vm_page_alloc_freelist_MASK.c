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
typedef  int /*<<< orphan*/ * vm_page_t ;
struct vm_domainset_iter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vm_domainset_iter*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_domainset_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int,int,int) ; 

vm_page_t
FUNC3(int freelist, int req)
{
	struct vm_domainset_iter di;
	vm_page_t m;
	int domain;

	FUNC1(&di, NULL, 0, &domain, &req);
	do {
		m = FUNC2(domain, freelist, req);
		if (m != NULL)
			break;
	} while (FUNC0(&di, NULL, &domain) == 0);

	return (m);
}