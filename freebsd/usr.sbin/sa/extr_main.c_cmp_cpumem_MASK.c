#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct cmdinfo {scalar_t__ ci_mem; int /*<<< orphan*/  ci_comm; } ;
typedef  int /*<<< orphan*/  c2 ;
typedef  int /*<<< orphan*/  c1 ;
struct TYPE_4__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ DBT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cmdinfo*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC2(const DBT *d1, const DBT *d2)
{
	struct cmdinfo c1, c2;

	FUNC1(&c1, d1->data, sizeof(c1));
	FUNC1(&c2, d2->data, sizeof(c2));

	if (c1.ci_mem < c2.ci_mem)
		return -1;
	else if (c1.ci_mem == c2.ci_mem)
		return (FUNC0(c1.ci_comm, c2.ci_comm));
	else
		return 1;
}