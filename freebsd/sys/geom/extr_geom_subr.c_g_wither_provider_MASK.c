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
struct g_provider {int flags; } ;

/* Variables and functions */
 int G_PF_ORPHAN ; 
 int G_PF_WITHER ; 
 int /*<<< orphan*/  FUNC0 (struct g_provider*,int) ; 

void
FUNC1(struct g_provider *pp, int error)
{

	pp->flags |= G_PF_WITHER;
	if (!(pp->flags & G_PF_ORPHAN))
		FUNC0(pp, error);
}