#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_4__ {int size; int sectsz; int sectsz_bits; } ;
struct pci_nvme_softc {TYPE_2__ nvstore; TYPE_1__* nsc_pi; } ;
struct nvme_namespace_data {int nsze; int ncap; int nuse; int* lbaf; int /*<<< orphan*/  eui64; scalar_t__ flbas; scalar_t__ nlbaf; } ;
struct TYPE_3__ {int /*<<< orphan*/  pi_func; int /*<<< orphan*/  pi_slot; int /*<<< orphan*/  pi_bus; } ;

/* Variables and functions */
 int NVME_NS_DATA_LBAF_LBADS_SHIFT ; 
 int OUI_FREEBSD_NVME_LOW ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  vmname ; 

__attribute__((used)) static void
FUNC5(struct pci_nvme_softc *sc,
    struct nvme_namespace_data *nd, uint32_t nsid,
    uint64_t eui64)
{

	nd->nsze = sc->nvstore.size / sc->nvstore.sectsz;
	nd->ncap = nd->nsze;
	nd->nuse = nd->nsze;

	/* Get LBA and backstore information from backing store */
	nd->nlbaf = 0; /* NLBAF is a 0's based value (i.e. 1 LBA Format) */
	nd->flbas = 0;

	/* Create an EUI-64 if user did not provide one */
	if (eui64 == 0) {
		char *data = NULL;

		FUNC0(&data, "%d%u%u%u", vmname, sc->nsc_pi->pi_bus,
		    sc->nsc_pi->pi_slot, sc->nsc_pi->pi_func);

		if (data != NULL) {
			eui64 = OUI_FREEBSD_NVME_LOW | FUNC2(0, data, FUNC4(data));
			FUNC3(data);
		}
		eui64 = (eui64 << 16) | (nsid & 0xffff);
	}
	FUNC1(nd->eui64, eui64);

	/* LBA data-sz = 2^lbads */
	nd->lbaf[0] = sc->nvstore.sectsz_bits << NVME_NS_DATA_LBAF_LBADS_SHIFT;
}