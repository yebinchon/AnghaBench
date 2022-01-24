#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  ifq_head; } ;
struct TYPE_5__ {int /*<<< orphan*/  ifq_head; } ;
struct sppp {TYPE_2__ pp_cpq; TYPE_1__ pp_fastq; } ;
struct ifnet {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  ifq_head; } ;
struct TYPE_8__ {TYPE_3__ if_snd; } ;

/* Variables and functions */
 struct sppp* FUNC0 (struct ifnet*) ; 
 TYPE_4__* FUNC1 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC2 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC3 (struct sppp*) ; 

int
FUNC4(struct ifnet *ifp)
{
	struct sppp *sp = FUNC0(ifp);
	int empty;

	FUNC2(sp);
	empty = !sp->pp_fastq.ifq_head && !sp->pp_cpq.ifq_head &&
		!FUNC1(sp)->if_snd.ifq_head;
	FUNC3(sp);
	return (empty);
}