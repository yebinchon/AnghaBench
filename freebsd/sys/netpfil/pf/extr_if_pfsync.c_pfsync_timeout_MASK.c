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
struct pfsync_bucket {TYPE_2__* b_sc; } ;
struct TYPE_4__ {TYPE_1__* sc_ifp; } ;
struct TYPE_3__ {int /*<<< orphan*/  if_vnet; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pfsync_bucket*) ; 
 int /*<<< orphan*/  FUNC3 (struct pfsync_bucket*) ; 
 int /*<<< orphan*/  FUNC4 (struct pfsync_bucket*) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct pfsync_bucket *b = arg;

	FUNC1(b->b_sc->sc_ifp->if_vnet);
	FUNC2(b);
	FUNC4(b);
	FUNC3(b);
	FUNC0();
}