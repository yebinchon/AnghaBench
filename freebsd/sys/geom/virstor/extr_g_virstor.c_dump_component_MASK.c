#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct g_virstor_component {int index; int chunk_count; int chunk_next; int flags; TYPE_2__* gcons; } ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {char* name; } ;

/* Variables and functions */
 scalar_t__ LVL_DEBUG2 ; 
 scalar_t__ g_virstor_debug ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 

__attribute__((used)) static void
FUNC1(struct g_virstor_component *comp)
{

	if (g_virstor_debug < LVL_DEBUG2)
		return;
	FUNC0("Component %d: %s\n", comp->index, comp->gcons->provider->name);
	FUNC0("  chunk_count: %u\n", comp->chunk_count);
	FUNC0("   chunk_next: %u\n", comp->chunk_next);
	FUNC0("        flags: %u\n", comp->flags);
}