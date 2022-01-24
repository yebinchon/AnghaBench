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
struct mibif {int /*<<< orphan*/  index; } ;
struct ifbreq {int /*<<< orphan*/  ifbr_ifsname; int /*<<< orphan*/  ifbr_portno; } ;
struct ifbpstpreq {int /*<<< orphan*/  ifbr_ifsname; int /*<<< orphan*/  ifbr_portno; } ;
struct bridge_port {scalar_t__ status; int flags; int /*<<< orphan*/  port_no; } ;
struct bridge_if {int /*<<< orphan*/  ports_age; } ;
typedef  int int32_t ;

/* Variables and functions */
 int BP_FOUND ; 
 int /*<<< orphan*/  LOG_ERR ; 
 scalar_t__ RowStatus_active ; 
 struct bridge_port* FUNC0 (struct mibif*,struct bridge_if*) ; 
 struct bridge_port* FUNC1 (struct bridge_if*) ; 
 struct bridge_port* FUNC2 (struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_port*) ; 
 struct bridge_port* FUNC4 (int /*<<< orphan*/ ,struct bridge_if*) ; 
 struct ifbreq* FUNC5 (int /*<<< orphan*/ ,struct ifbreq*,int) ; 
 int FUNC6 (struct bridge_if*,struct ifbreq**) ; 
 int FUNC7 (struct bridge_if*,struct ifbreq**) ; 
 int /*<<< orphan*/  FUNC8 (struct ifbreq*,struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct mibif*,struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifbreq*,struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC11 (struct bridge_port*,struct bridge_if*) ; 
 int /*<<< orphan*/  FUNC12 (struct ifbreq*) ; 
 struct mibif* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

int
FUNC16(struct bridge_if *bif)
{
	int added, updated;
	uint32_t i;
	int32_t buf_len;
	struct ifbreq *b_req_buf, *b_req;
	struct ifbpstpreq *bs_req_buf, *bs_req;
	struct bridge_port *bp, *bp_next;
	struct mibif *m_if;

	if ((buf_len = FUNC6(bif, &b_req_buf)) < 0)
		return (-1);

	added = updated = 0;

#define	BP_FOUND	0x01
	for (i = 0; i < buf_len / sizeof(struct ifbreq); i++) {
		b_req = b_req_buf + i;

		if ((m_if = FUNC13(b_req->ifbr_portno)) == NULL) {
			FUNC14(LOG_ERR, "bridge member %s not present "
			    "in mibII ifTable", b_req->ifbr_ifsname);
			continue;
		}

		if ((bp = FUNC4(m_if->index, bif)) == NULL &&
		    (bp = FUNC0(m_if, bif)) != NULL) {
			bp->status = RowStatus_active;
			added++;
		}

		if (bp != NULL) {
			updated++;
			FUNC8(b_req, bp);
			FUNC9(m_if, bp);
			bp->flags |= BP_FOUND;
		}
	}
	FUNC12(b_req_buf);

	/* Clean up list. */
	for (bp = FUNC1(bif); bp != NULL; bp = bp_next) {
		bp_next  = FUNC2(bp);

		if ((bp->flags & BP_FOUND) == 0 &&
		    bp->status == RowStatus_active)
			FUNC11(bp, bif);
		else
			bp->flags |= ~BP_FOUND;
	}
#undef	BP_FOUND

	if ((buf_len = FUNC7(bif, &bs_req_buf)) < 0)
		return (-1);

	for (bp = FUNC1(bif); bp != NULL;
	    bp = FUNC2(bp)) {
		if ((bs_req = FUNC5(bp->port_no,
		    bs_req_buf, buf_len)) == NULL)
			FUNC3(bp);
		else
			FUNC10(bs_req, bp);
	}
	FUNC12(bs_req_buf);
	bif->ports_age = FUNC15(NULL);

	return (updated);
}