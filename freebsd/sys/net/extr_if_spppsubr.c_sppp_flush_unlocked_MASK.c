#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ifqueue {int dummy; } ;
struct sppp {struct ifqueue pp_cpq; struct ifqueue pp_fastq; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  if_snd; } ;

/* Variables and functions */
 struct sppp* FUNC0 (struct ifnet*) ; 
 TYPE_1__* FUNC1 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifqueue*) ; 

__attribute__((used)) static void
FUNC3(struct ifnet *ifp)
{
	struct sppp *sp = FUNC0(ifp);

	FUNC2 ((struct ifqueue *)&FUNC1(sp)->if_snd);
	FUNC2 (&sp->pp_fastq);
	FUNC2 (&sp->pp_cpq);
}