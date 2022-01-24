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
typedef  int /*<<< orphan*/  uintmax_t ;
struct vmbus_xact {int dummy; } ;
struct vmbus_gpa {int gpa_len; scalar_t__ gpa_ofs; scalar_t__ gpa_page; } ;
struct hn_softc {int /*<<< orphan*/  hn_prichan; int /*<<< orphan*/  hn_ifp; } ;
struct hn_nvs_sendctx {int dummy; } ;
typedef  int bus_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hn_softc*) ; 
 int HN_XACT_REQ_PGCNT ; 
 size_t HN_XACT_REQ_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int PAGE_MASK ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct hn_nvs_sendctx*,struct vmbus_gpa*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 void const* FUNC5 (int /*<<< orphan*/ ,struct vmbus_xact*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vmbus_xact*) ; 
 int /*<<< orphan*/  FUNC7 (struct vmbus_xact*) ; 
 int FUNC8 (struct vmbus_xact*) ; 

__attribute__((used)) static const void *
FUNC9(struct hn_softc *sc, struct vmbus_xact *xact, size_t reqlen,
    struct hn_nvs_sendctx *sndc, size_t *comp_len)
{
	struct vmbus_gpa gpa[HN_XACT_REQ_PGCNT];
	int gpa_cnt, error;
	bus_addr_t paddr;

	FUNC1(reqlen <= HN_XACT_REQ_SIZE && reqlen > 0,
	    ("invalid request length %zu", reqlen));

	/*
	 * Setup the SG list.
	 */
	paddr = FUNC8(xact);
	FUNC1((paddr & PAGE_MASK) == 0,
	    ("vmbus xact request is not page aligned 0x%jx", (uintmax_t)paddr));
	for (gpa_cnt = 0; gpa_cnt < HN_XACT_REQ_PGCNT; ++gpa_cnt) {
		int len = PAGE_SIZE;

		if (reqlen == 0)
			break;
		if (reqlen < len)
			len = reqlen;

		gpa[gpa_cnt].gpa_page = FUNC2(paddr) + gpa_cnt;
		gpa[gpa_cnt].gpa_len = len;
		gpa[gpa_cnt].gpa_ofs = 0;

		reqlen -= len;
	}
	FUNC1(reqlen == 0, ("still have %zu request data left", reqlen));

	/*
	 * Send this RNDIS control message and wait for its completion
	 * message.
	 */
	FUNC6(xact);
	error = FUNC3(sc->hn_prichan, sndc, gpa, gpa_cnt);
	if (error) {
		FUNC7(xact);
		FUNC4(sc->hn_ifp, "RNDIS ctrl send failed: %d\n", error);
		return (NULL);
	}
	return (FUNC5(sc->hn_prichan, xact, comp_len,
	    FUNC0(sc)));
}