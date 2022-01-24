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
struct g_provider {int flags; scalar_t__ mediasize; } ;
struct g_hh00 {scalar_t__ size; struct g_provider* pp; } ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 int G_PF_WITHER ; 
 int /*<<< orphan*/  FUNC0 (struct g_provider*) ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 struct g_hh00* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct g_hh00*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  g_resize_provider_event ; 

void
FUNC3(struct g_provider *pp, off_t size)
{
	struct g_hh00 *hh;

	FUNC0(pp);
	if (pp->flags & G_PF_WITHER)
		return;

	if (size == pp->mediasize)
		return;

	hh = FUNC1(sizeof *hh, M_WAITOK | M_ZERO);
	hh->pp = pp;
	hh->size = size;
	FUNC2(g_resize_provider_event, hh, M_WAITOK, NULL);
}