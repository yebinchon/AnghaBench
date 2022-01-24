#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
struct TYPE_6__ {scalar_t__ type; int size; int sectsz; int sectsz_bits; int /*<<< orphan*/ * ctx; int /*<<< orphan*/  eui64; } ;
struct TYPE_4__ {char* sn; } ;
struct pci_nvme_softc {void* max_queues; void* num_squeues; void* num_cqueues; void* ioslots; void* max_qentries; TYPE_3__ nvstore; TYPE_2__* nsc_pi; TYPE_1__ ctrldata; } ;
typedef  int /*<<< orphan*/  bident ;
struct TYPE_5__ {int pi_slot; int pi_func; } ;

/* Variables and functions */
 void* NVME_IOSLOTS ; 
 void* NVME_MAX_QENTRIES ; 
 void* NVME_QUEUES ; 
 scalar_t__ NVME_STOR_BLOCKIF ; 
 scalar_t__ NVME_STOR_RAM ; 
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (char*,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int,int) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC11 (char*,char) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 char* FUNC13 (char*) ; 
 char* FUNC14 (char*,char*) ; 
 int FUNC15 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC16(struct pci_nvme_softc *sc, char *opts)
{
	char bident[sizeof("XX:X:X")];
	char	*uopt, *xopts, *config;
	uint32_t sectsz;
	int optidx;

	sc->max_queues = NVME_QUEUES;
	sc->max_qentries = NVME_MAX_QENTRIES;
	sc->ioslots = NVME_IOSLOTS;
	sc->num_squeues = sc->max_queues;
	sc->num_cqueues = sc->max_queues;
	sectsz = 0;

	uopt = FUNC13(opts);
	optidx = 0;
	FUNC10(sc->ctrldata.sn, sizeof(sc->ctrldata.sn),
	         "NVME-%d-%d", sc->nsc_pi->pi_slot, sc->nsc_pi->pi_func);
	for (xopts = FUNC14(uopt, ",");
	     xopts != NULL;
	     xopts = FUNC14(NULL, ",")) {

		if ((config = FUNC11(xopts, '=')) != NULL)
			*config++ = '\0';

		if (!FUNC12("maxq", xopts)) {
			sc->max_queues = FUNC0(config);
		} else if (!FUNC12("qsz", xopts)) {
			sc->max_qentries = FUNC0(config);
		} else if (!FUNC12("ioslots", xopts)) {
			sc->ioslots = FUNC0(config);
		} else if (!FUNC12("sectsz", xopts)) {
			sectsz = FUNC0(config);
		} else if (!FUNC12("ser", xopts)) {
			/*
			 * This field indicates the Product Serial Number in
			 * 7-bit ASCII, unused bytes should be space characters.
			 * Ref: NVMe v1.3c.
			 */
			FUNC5((char *)sc->ctrldata.sn,
			           sizeof(sc->ctrldata.sn), config, ' ');
		} else if (!FUNC12("ram", xopts)) {
			uint64_t sz = FUNC15(&xopts[4], NULL, 10);

			sc->nvstore.type = NVME_STOR_RAM;
			sc->nvstore.size = sz * 1024 * 1024;
			sc->nvstore.ctx = FUNC4(1, sc->nvstore.size);
			sc->nvstore.sectsz = 4096;
			sc->nvstore.sectsz_bits = 12;
			if (sc->nvstore.ctx == NULL) {
				FUNC9("Unable to allocate RAM");
				FUNC7(uopt);
				return (-1);
			}
		} else if (!FUNC12("eui64", xopts)) {
			sc->nvstore.eui64 = FUNC8(FUNC15(config, NULL, 0));
		} else if (optidx == 0) {
			FUNC10(bident, sizeof(bident), "%d:%d",
			         sc->nsc_pi->pi_slot, sc->nsc_pi->pi_func);
			sc->nvstore.ctx = FUNC1(xopts, bident);
			if (sc->nvstore.ctx == NULL) {
				FUNC9("Could not open backing file");
				FUNC7(uopt);
				return (-1);
			}
			sc->nvstore.type = NVME_STOR_BLOCKIF;
			sc->nvstore.size = FUNC3(sc->nvstore.ctx);
		} else {
			FUNC6(stderr, "Invalid option %s\n", xopts);
			FUNC7(uopt);
			return (-1);
		}

		optidx++;
	}
	FUNC7(uopt);

	if (sc->nvstore.ctx == NULL || sc->nvstore.size == 0) {
		FUNC6(stderr, "backing store not specified\n");
		return (-1);
	}
	if (sectsz == 512 || sectsz == 4096 || sectsz == 8192)
		sc->nvstore.sectsz = sectsz;
	else if (sc->nvstore.type != NVME_STOR_RAM)
		sc->nvstore.sectsz = FUNC2(sc->nvstore.ctx);
	for (sc->nvstore.sectsz_bits = 9;
	     (1 << sc->nvstore.sectsz_bits) < sc->nvstore.sectsz;
	     sc->nvstore.sectsz_bits++);

	if (sc->max_queues <= 0 || sc->max_queues > NVME_QUEUES)
		sc->max_queues = NVME_QUEUES;

	if (sc->max_qentries <= 0) {
		FUNC6(stderr, "Invalid qsz option\n");
		return (-1);
	}
	if (sc->ioslots <= 0) {
		FUNC6(stderr, "Invalid ioslots option\n");
		return (-1);
	}

	return (0);
}