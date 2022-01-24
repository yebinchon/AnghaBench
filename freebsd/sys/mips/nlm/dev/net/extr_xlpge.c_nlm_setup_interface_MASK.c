#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct nlm_xlpnae_softc {int nucores; TYPE_1__* portcfg; int /*<<< orphan*/ * cmplx_type; int /*<<< orphan*/  nblocks; int /*<<< orphan*/  base; } ;
struct TYPE_2__ {int /*<<< orphan*/  free_desc_sizes; int /*<<< orphan*/  ucore_mask; int /*<<< orphan*/  vlan_pri_en; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGMIIC ; 
 int /*<<< orphan*/  XAUIC ; 
 int /*<<< orphan*/  FUNC0 (struct nlm_xlpnae_softc*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC9(struct nlm_xlpnae_softc *sc, int nblock,
    int port, uint32_t cur_flow_base, uint32_t flow_mask,
    int max_channels, int context)
{
	uint64_t nae_base = sc->base;
	int mtu = 1536;			/* XXXJC: don't hard code */
	uint32_t ucore_mask;

	if (sc->cmplx_type[nblock] == XAUIC)
		FUNC3(nae_base, nblock, mtu,
		    mtu, sc->portcfg[port].vlan_pri_en);
	FUNC1(nae_base,
	    port, sc->portcfg[port].free_desc_sizes);
	FUNC2(nae_base,
	    port, sc->portcfg[port].ucore_mask);

	FUNC8(nae_base, port, cur_flow_base, flow_mask);

	if (sc->cmplx_type[nblock] == SGMIIC)
		FUNC4(nae_base, nblock, port, mtu, 0);

	FUNC0(sc, nblock, context, port, max_channels);

	FUNC5(nae_base, sc->nblocks);
	FUNC7(nae_base, nblock, sc->cmplx_type[nblock], port,
	    sc->portcfg[port].free_desc_sizes);

	/*  XXXJC: check mask calculation */
	ucore_mask = (1 << sc->nucores) - 1;
	FUNC6(nae_base, port, ucore_mask);
}