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
struct unrhdr {int /*<<< orphan*/  mtx; } ;
struct unr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int) ; 
 int WARN_GIANTOK ; 
 int WARN_SLEEPOK ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (struct unrhdr*,int /*<<< orphan*/ ,void**,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(struct unrhdr *uh, u_int item)
{
	void *p1, *p2;
	int i;

	FUNC2(WARN_GIANTOK | WARN_SLEEPOK, NULL, "alloc_unr_specific");

	p1 = FUNC1(sizeof(struct unr));
	p2 = FUNC1(sizeof(struct unr));

	FUNC4(uh->mtx);
	i = FUNC3(uh, item, &p1, &p2);
	FUNC5(uh->mtx);

	if (p1 != NULL)
		FUNC0(p1);
	if (p2 != NULL)
		FUNC0(p2);

	return (i);
}