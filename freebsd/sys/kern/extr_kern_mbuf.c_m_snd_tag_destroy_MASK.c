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
struct m_snd_tag {struct ifnet* ifp; } ;
struct ifnet {int /*<<< orphan*/  (* if_snd_tag_free ) (struct m_snd_tag*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  snd_tag_count ; 
 int /*<<< orphan*/  FUNC2 (struct m_snd_tag*) ; 

void
FUNC3(struct m_snd_tag *mst)
{
	struct ifnet *ifp;

	ifp = mst->ifp;
	ifp->if_snd_tag_free(mst);
	FUNC1(ifp);
	FUNC0(snd_tag_count, -1);
}