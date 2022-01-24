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
struct cryptop {struct cryptodesc* crp_desc; } ;
struct cryptodesc {struct cryptodesc* crd_next; } ;

/* Variables and functions */
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct cryptop*) ; 
 int /*<<< orphan*/  cryptodesc_zone ; 
 int /*<<< orphan*/  cryptop_zone ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 

struct cryptop *
FUNC2(int num)
{
	struct cryptodesc *crd;
	struct cryptop *crp;

	crp = FUNC1(cryptop_zone, M_NOWAIT|M_ZERO);
	if (crp != NULL) {
		while (num--) {
			crd = FUNC1(cryptodesc_zone, M_NOWAIT|M_ZERO);
			if (crd == NULL) {
				FUNC0(crp);
				return NULL;
			}

			crd->crd_next = crp->crp_desc;
			crp->crp_desc = crd;
		}
	}
	return crp;
}