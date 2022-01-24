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
struct bhndb_resources {int /*<<< orphan*/  bus_intrs; } ;
struct bhndb_intr_handler {int ih_active; int /*<<< orphan*/  ih_cookiep; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bhndb_intr_handler*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bhndb_intr_handler* FUNC2 (struct bhndb_resources*,struct bhndb_intr_handler*) ; 
 int /*<<< orphan*/  bhndb_intr_handler ; 
 int /*<<< orphan*/  ih_link ; 

void
FUNC3(struct bhndb_resources *br,
    struct bhndb_intr_handler *ih)
{
	FUNC0(ih->ih_active, ("duplicate deregistration of interrupt "
	    "handler %p", ih->ih_cookiep));

	FUNC0(FUNC2(br, ih) == ih,
	    ("unknown interrupt handler %p", ih));

	FUNC1(&br->bus_intrs, ih, bhndb_intr_handler, ih_link);
	ih->ih_active = false;
}