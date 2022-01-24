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
struct iwi_softc {int dummy; } ;
struct iwi_rateset {int mode; int type; scalar_t__ nrates; int /*<<< orphan*/  rates; } ;
struct ieee80211_rateset {scalar_t__ rs_nrates; int /*<<< orphan*/  rs_rates; } ;
typedef  int /*<<< orphan*/  rs ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IWI_CMD_SET_RATES ; 
 int IWI_MODE_11A ; 
 int IWI_MODE_11G ; 
 int IWI_RATESET_TYPE_SUPPORTED ; 
 int FUNC1 (struct iwi_softc*,int /*<<< orphan*/ ,struct iwi_rateset*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct iwi_rateset*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct iwi_softc *sc, const struct ieee80211_rateset *net_rs,
    int mode, int type)
{
	struct iwi_rateset rs;

	FUNC3(&rs, 0, sizeof(rs));
	rs.mode = mode;
	rs.type = type;
	rs.nrates = net_rs->rs_nrates;
	if (rs.nrates > FUNC4(rs.rates)) {
		FUNC0(("Truncating negotiated rate set from %u\n",
		    rs.nrates));
		rs.nrates = FUNC4(rs.rates);
	}
	FUNC2(rs.rates, net_rs->rs_rates, rs.nrates);
	FUNC0(("Setting .11%c%s %s rates (%u)\n",
	    mode == IWI_MODE_11A ? 'a' : 'b',
	    mode == IWI_MODE_11G ? "g" : "",
	    type == IWI_RATESET_TYPE_SUPPORTED ? "supported" : "negotiated",
	    rs.nrates));

	return (FUNC1(sc, IWI_CMD_SET_RATES, &rs, sizeof(rs)));
}