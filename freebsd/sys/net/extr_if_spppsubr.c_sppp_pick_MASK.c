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
struct TYPE_5__ {struct mbuf* ifq_head; } ;
struct TYPE_7__ {struct mbuf* ifq_head; } ;
struct sppp {scalar_t__ pp_phase; scalar_t__ pp_mode; TYPE_1__ pp_fastq; TYPE_3__ pp_cpq; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {struct mbuf* ifq_head; } ;
struct TYPE_8__ {TYPE_2__ if_snd; } ;

/* Variables and functions */
 scalar_t__ IFF_CISCO ; 
 struct sppp* FUNC0 (struct ifnet*) ; 
 scalar_t__ PHASE_NETWORK ; 
 scalar_t__ PP_FR ; 
 TYPE_4__* FUNC1 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC2 (struct sppp*) ; 
 int /*<<< orphan*/  FUNC3 (struct sppp*) ; 

struct mbuf *
FUNC4(struct ifnet *ifp)
{
	struct sppp *sp = FUNC0(ifp);
	struct mbuf *m;

	FUNC2(sp);

	m = sp->pp_cpq.ifq_head;
	if (m == NULL &&
	    (sp->pp_phase == PHASE_NETWORK ||
	     sp->pp_mode == IFF_CISCO ||
	     sp->pp_mode == PP_FR))
		if ((m = sp->pp_fastq.ifq_head) == NULL)
			m = FUNC1(sp)->if_snd.ifq_head;
	FUNC3(sp);
	return (m);
}