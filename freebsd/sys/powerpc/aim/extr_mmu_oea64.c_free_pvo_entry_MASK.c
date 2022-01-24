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
struct pvo_entry {int pvo_vaddr; } ;

/* Variables and functions */
 int PVO_BOOTSTRAP ; 
 int /*<<< orphan*/  moea64_pvo_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct pvo_entry*) ; 

__attribute__((used)) static void
FUNC1(struct pvo_entry *pvo)
{

	if (!(pvo->pvo_vaddr & PVO_BOOTSTRAP))
		FUNC0(moea64_pvo_zone, pvo);
}