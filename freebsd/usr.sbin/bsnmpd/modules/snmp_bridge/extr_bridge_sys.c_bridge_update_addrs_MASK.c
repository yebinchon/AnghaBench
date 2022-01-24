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
typedef  int uint32_t ;
struct tp_entry {int flags; } ;
struct ifbareq {int /*<<< orphan*/  ifba_dst; } ;
struct bridge_if {int /*<<< orphan*/  addrs_age; } ;
typedef  int int32_t ;

/* Variables and functions */
 int BA_FOUND ; 
 struct tp_entry* FUNC0 (struct bridge_if*) ; 
 struct tp_entry* FUNC1 (struct tp_entry*) ; 
 struct tp_entry* FUNC2 (int /*<<< orphan*/ ,struct bridge_if*) ; 
 int FUNC3 (struct bridge_if*,struct ifbareq**) ; 
 int /*<<< orphan*/  FUNC4 (struct ifbareq*,struct tp_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct tp_entry*,struct bridge_if*) ; 
 struct tp_entry* FUNC6 (int /*<<< orphan*/ ,struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifbareq*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(struct bridge_if *bif)
{
	int added, updated;
	uint32_t i;
	int32_t buf_len;
	struct tp_entry *te, *te_next;
	struct ifbareq *addr_req_buf, *addr_req;

	if ((buf_len = FUNC3(bif, &addr_req_buf)) < 0)
		return (-1);

	added = updated = 0;

#define	BA_FOUND	0x01
	for (i = 0; i < buf_len / sizeof(struct ifbareq); i++) {
		addr_req = addr_req_buf + i;

		if ((te = FUNC2(addr_req->ifba_dst, bif)) == NULL) {
			added++;

			if ((te = FUNC6(addr_req->ifba_dst, bif))
			    == NULL)
				continue;
		} else
			updated++;

		FUNC4(addr_req, te);
		te-> flags |= BA_FOUND;
	}
	FUNC7(addr_req_buf);

	for (te = FUNC0(bif); te != NULL; te = te_next) {
		te_next = FUNC1(te);

		if ((te-> flags & BA_FOUND) == 0)
			FUNC5(te, bif);
		else
			te-> flags &= ~BA_FOUND;
	}
#undef	BA_FOUND

	bif->addrs_age = FUNC8(NULL);
	return (updated + added);
}