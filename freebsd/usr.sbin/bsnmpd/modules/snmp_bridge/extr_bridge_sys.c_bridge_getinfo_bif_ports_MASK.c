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
struct mibif {int dummy; } ;
struct ifbreq {int /*<<< orphan*/  ifbr_ifsname; int /*<<< orphan*/  ifbr_portno; } ;
struct ifbpstpreq {int /*<<< orphan*/  ifbr_ifsname; int /*<<< orphan*/  ifbr_portno; } ;
struct bridge_port {int /*<<< orphan*/  port_no; int /*<<< orphan*/  status; } ;
struct bridge_if {int dummy; } ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  RowStatus_active ; 
 struct bridge_port* FUNC0 (struct mibif*,struct bridge_if*) ; 
 struct bridge_port* FUNC1 (struct bridge_if*) ; 
 struct bridge_port* FUNC2 (struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct bridge_port*) ; 
 struct ifbreq* FUNC4 (int /*<<< orphan*/ ,struct ifbreq*,int) ; 
 int FUNC5 (struct bridge_if*,struct ifbreq**) ; 
 int FUNC6 (struct bridge_if*,struct ifbreq**) ; 
 int /*<<< orphan*/  FUNC7 (struct ifbreq*,struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct mibif*,struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC9 (struct ifbreq*,struct bridge_port*) ; 
 int /*<<< orphan*/  FUNC10 (struct ifbreq*) ; 
 struct mibif* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int
FUNC13(struct bridge_if *bif)
{
	uint32_t i;
	int32_t buf_len;
	struct ifbreq *b_req_buf, *b_req;
	struct ifbpstpreq *bs_req_buf, *bs_req;
	struct bridge_port *bp;
	struct mibif *m_if;

	if ((buf_len = FUNC5(bif, &b_req_buf)) < 0)
		return (-1);

	for (i = 0; i < buf_len / sizeof(struct ifbreq); i++) {
		b_req = b_req_buf + i;

		if ((m_if = FUNC11(b_req->ifbr_portno)) != NULL) {
			/* Hopefully we will not fail here. */
			if ((bp = FUNC0(m_if, bif)) != NULL) {
				bp->status = RowStatus_active;
				FUNC7(b_req, bp);
				FUNC8(m_if, bp);
			}
		} else {
			FUNC12(LOG_ERR, "bridge member %s not present "
			    "in mibII ifTable", b_req->ifbr_ifsname);
		}
	}
	FUNC10(b_req_buf);

	if ((buf_len = FUNC6(bif, &bs_req_buf)) < 0)
		return (-1);

	for (bp = FUNC1(bif); bp != NULL;
	    bp = FUNC2(bp)) {
		if ((bs_req = FUNC4(bp->port_no,
		    bs_req_buf, buf_len)) == NULL)
			FUNC3(bp);
		else
			FUNC9(bs_req, bp);
	}
	FUNC10(bs_req_buf);

	return (i);
}