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
struct pargs {int ar_length; int /*<<< orphan*/  ar_ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_PARGS ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct pargs* FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 

struct pargs *
FUNC2(int len)
{
	struct pargs *pa;

	pa = FUNC0(sizeof(struct pargs) + len, M_PARGS,
		M_WAITOK);
	FUNC1(&pa->ar_ref, 1);
	pa->ar_length = len;
	return (pa);
}