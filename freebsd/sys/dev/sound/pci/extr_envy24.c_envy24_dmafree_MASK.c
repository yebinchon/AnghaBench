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
typedef  int u_int32_t ;
struct sc_info {int /*<<< orphan*/ * rbuf; int /*<<< orphan*/ * pbuf; scalar_t__ paddr; scalar_t__ raddr; int /*<<< orphan*/  pmap; int /*<<< orphan*/  dmat; int /*<<< orphan*/  rmap; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static void
FUNC4(struct sc_info *sc)
{
#if(0)
	device_printf(sc->dev, "envy24_dmafree():");
	printf(" sc->raddr(0x%08x)", (u_int32_t)sc->raddr);
	printf(" sc->paddr(0x%08x)", (u_int32_t)sc->paddr);
	if (sc->rbuf) printf(" sc->rbuf(0x%08x)", (u_int32_t)sc->rbuf);
	else printf(" sc->rbuf(null)");
	if (sc->pbuf) printf(" sc->pbuf(0x%08x)\n", (u_int32_t)sc->pbuf);
	else printf(" sc->pbuf(null)\n");
#endif
#if(0)
	if (sc->raddr)
		bus_dmamap_unload(sc->dmat, sc->rmap);
	if (sc->paddr)
		bus_dmamap_unload(sc->dmat, sc->pmap);
	if (sc->rbuf)
		bus_dmamem_free(sc->dmat, sc->rbuf, sc->rmap);
	if (sc->pbuf)
		bus_dmamem_free(sc->dmat, sc->pbuf, sc->pmap);
#else
	FUNC0(sc->dmat, sc->rmap);
	FUNC0(sc->dmat, sc->pmap);
	FUNC1(sc->dmat, sc->rbuf, sc->rmap);
	FUNC1(sc->dmat, sc->pbuf, sc->pmap);
#endif

	sc->raddr = sc->paddr = 0;
	sc->pbuf = NULL;
	sc->rbuf = NULL;

	return;
}