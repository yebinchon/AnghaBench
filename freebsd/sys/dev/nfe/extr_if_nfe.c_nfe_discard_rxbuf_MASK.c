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
struct TYPE_2__ {struct nfe_desc32* desc32; struct nfe_desc64* desc64; struct nfe_rx_data* data; } ;
struct nfe_softc {int nfe_flags; TYPE_1__ rxq; } ;
struct nfe_rx_data {int /*<<< orphan*/  paddr; struct mbuf* m; } ;
struct nfe_desc64 {void* flags; void* length; void** physaddr; } ;
struct nfe_desc32 {void* flags; void* length; } ;
struct mbuf {int /*<<< orphan*/  m_len; } ;

/* Variables and functions */
 int NFE_40BIT_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NFE_RX_READY ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline void
FUNC4(struct nfe_softc *sc, int idx)
{
	struct nfe_desc32 *desc32;
	struct nfe_desc64 *desc64;
	struct nfe_rx_data *data;
	struct mbuf *m;

	data = &sc->rxq.data[idx];
	m = data->m;

	if (sc->nfe_flags & NFE_40BIT_ADDR) {
		desc64 = &sc->rxq.desc64[idx];
		/* VLAN packet may have overwritten it. */
		desc64->physaddr[0] = FUNC3(FUNC0(data->paddr));
		desc64->physaddr[1] = FUNC3(FUNC1(data->paddr));
		desc64->length = FUNC2(m->m_len);
		desc64->flags = FUNC2(NFE_RX_READY);
	} else {
		desc32 = &sc->rxq.desc32[idx];
		desc32->length = FUNC2(m->m_len);
		desc32->flags = FUNC2(NFE_RX_READY);
	}
}