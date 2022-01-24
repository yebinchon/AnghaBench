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
struct ntb_queue_entry {int /*<<< orphan*/  len; int /*<<< orphan*/ * buf; } ;
struct mbuf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  KTR_NTB ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_queue_entry*) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(struct ntb_queue_entry *entry, void *offset)
{

	FUNC0(KTR_NTB, "TX: copying %d bytes to offset %p", entry->len, offset);
	if (entry->buf != NULL) {
		FUNC1((struct mbuf *)entry->buf, 0, entry->len, offset);

		/*
		 * Ensure that the data is fully copied before setting the
		 * flags
		 */
		FUNC3();
	}

	FUNC2(entry);
}