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
typedef  int u_char ;
struct vmctx {int dummy; } ;
struct pci_devinst {int pi_slot; int pi_func; struct pci_ahci_softc* pi_arg; } ;
struct pci_ahci_softc {int ports; int pi; int cap; int vs; TYPE_1__* port; int /*<<< orphan*/  cap2; int /*<<< orphan*/  mtx; struct pci_devinst* asc_pi; } ;
struct blockif_ctxt {int dummy; } ;
typedef  int /*<<< orphan*/  bident ;
struct TYPE_2__ {int port; int atapi; int ioqsz; struct blockif_ctxt* bctx; int /*<<< orphan*/  ident; struct pci_ahci_softc* pr_sc; } ;
typedef  int /*<<< orphan*/  MD5_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  AHCI_CAP2_APST ; 
 int AHCI_CAP_64BIT ; 
 int AHCI_CAP_ISS_SHIFT ; 
 int AHCI_CAP_NCS_SHIFT ; 
 int AHCI_CAP_PMD ; 
 int AHCI_CAP_PSC ; 
 int AHCI_CAP_SAL ; 
 int AHCI_CAP_SALP ; 
 int AHCI_CAP_SCLO ; 
 int AHCI_CAP_SMPS ; 
 int AHCI_CAP_SNCQ ; 
 int AHCI_CAP_SSC ; 
 int AHCI_CAP_SSNTF ; 
 int AHCI_CAP_SSS ; 
 int AHCI_CAP_SXS ; 
 scalar_t__ AHCI_OFFSET ; 
 int /*<<< orphan*/  AHCI_PORT_IDENT ; 
 int AHCI_STEP ; 
 int DEF_PORTS ; 
 int MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  PCIBAR_MEM32 ; 
 int /*<<< orphan*/  PCIC_STORAGE ; 
 int /*<<< orphan*/  PCIP_STORAGE_SATA_AHCI_1_0 ; 
 int /*<<< orphan*/  PCIR_CLASS ; 
 int /*<<< orphan*/  PCIR_DEVICE ; 
 int /*<<< orphan*/  PCIR_PROGIF ; 
 int /*<<< orphan*/  PCIR_SUBCLASS ; 
 int /*<<< orphan*/  PCIR_VENDOR ; 
 int /*<<< orphan*/  PCIS_STORAGE_SATA ; 
 int /*<<< orphan*/  FUNC4 (struct pci_ahci_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct blockif_ctxt*) ; 
 struct blockif_ctxt* FUNC6 (char*,char*) ; 
 struct pci_ahci_softc* FUNC7 (int,int) ; 
 int /*<<< orphan*/  dbg ; 
 int FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct pci_ahci_softc*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (struct pci_devinst*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct pci_devinst*,int,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (struct pci_devinst*) ; 
 int /*<<< orphan*/  FUNC15 (struct pci_devinst*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct pci_devinst*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (char*,int,char*,int,int,int,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 
 char* FUNC21 (char*,char*) ; 

__attribute__((used)) static int
FUNC22(struct vmctx *ctx, struct pci_devinst *pi, char *opts, int atapi)
{
	char bident[sizeof("XX:XX:XX")];
	struct blockif_ctxt *bctxt;
	struct pci_ahci_softc *sc;
	int ret, slots, p;
	MD5_CTX mdctx;
	u_char digest[16];
	char *next, *next2;

	ret = 0;

#ifdef AHCI_DEBUG
	dbg = fopen("/tmp/log", "w+");
#endif

	sc = FUNC7(1, sizeof(struct pci_ahci_softc));
	pi->pi_arg = sc;
	sc->asc_pi = pi;
	FUNC17(&sc->mtx, NULL);
	sc->ports = 0;
	sc->pi = 0;
	slots = 32;

	for (p = 0; p < MAX_PORTS && opts != NULL; p++, opts = next) {
		/* Identify and cut off type of present port. */
		if (FUNC20(opts, "hd:", 3) == 0) {
			atapi = 0;
			opts += 3;
		} else if (FUNC20(opts, "cd:", 3) == 0) {
			atapi = 1;
			opts += 3;
		}

		/* Find and cut off the next port options. */
		next = FUNC21(opts, ",hd:");
		next2 = FUNC21(opts, ",cd:");
		if (next == NULL || (next2 != NULL && next2 < next))
			next = next2;
		if (next != NULL) {
			next[0] = 0;
			next++;
		}

		if (opts[0] == 0)
			continue;

		/*
		 * Attempt to open the backing image. Use the PCI slot/func
		 * and the port number for the identifier string.
		 */
		FUNC18(bident, sizeof(bident), "%d:%d:%d", pi->pi_slot,
		    pi->pi_func, p);
		bctxt = FUNC6(opts, bident);
		if (bctxt == NULL) {
			sc->ports = p;
			ret = 1;
			goto open_fail;
		}	
		sc->port[p].bctx = bctxt;
		sc->port[p].pr_sc = sc;
		sc->port[p].port = p;
		sc->port[p].atapi = atapi;

		/*
		 * Create an identifier for the backing file.
		 * Use parts of the md5 sum of the filename
		 */
		FUNC1(&mdctx);
		FUNC2(&mdctx, opts, FUNC19(opts));
		FUNC0(digest, &mdctx);
		FUNC18(sc->port[p].ident, AHCI_PORT_IDENT,
		    "BHYVE-%02X%02X-%02X%02X-%02X%02X",
		    digest[0], digest[1], digest[2], digest[3], digest[4],
		    digest[5]);

		/*
		 * Allocate blockif request structures and add them
		 * to the free list
		 */
		FUNC11(&sc->port[p]);

		sc->pi |= (1 << p);
		if (sc->port[p].ioqsz < slots)
			slots = sc->port[p].ioqsz;
	}
	sc->ports = p;

	/* Intel ICH8 AHCI */
	--slots;
	if (sc->ports < DEF_PORTS)
		sc->ports = DEF_PORTS;
	sc->cap = AHCI_CAP_64BIT | AHCI_CAP_SNCQ | AHCI_CAP_SSNTF |
	    AHCI_CAP_SMPS | AHCI_CAP_SSS | AHCI_CAP_SALP |
	    AHCI_CAP_SAL | AHCI_CAP_SCLO | (0x3 << AHCI_CAP_ISS_SHIFT)|
	    AHCI_CAP_PMD | AHCI_CAP_SSC | AHCI_CAP_PSC |
	    (slots << AHCI_CAP_NCS_SHIFT) | AHCI_CAP_SXS | (sc->ports - 1);

	sc->vs = 0x10300;
	sc->cap2 = AHCI_CAP2_APST;
	FUNC4(sc);

	FUNC15(pi, PCIR_DEVICE, 0x2821);
	FUNC15(pi, PCIR_VENDOR, 0x8086);
	FUNC16(pi, PCIR_CLASS, PCIC_STORAGE);
	FUNC16(pi, PCIR_SUBCLASS, PCIS_STORAGE_SATA);
	FUNC16(pi, PCIR_PROGIF, PCIP_STORAGE_SATA_AHCI_1_0);
	p = FUNC3(sc->ports, 16);
	p = FUNC8(p) - ((p & (p - 1)) ? 0 : 1);
	FUNC12(pi, 1 << p);
	FUNC13(pi, 5, PCIBAR_MEM32,
	    AHCI_OFFSET + sc->ports * AHCI_STEP);

	FUNC14(pi);

open_fail:
	if (ret) {
		for (p = 0; p < sc->ports; p++) {
			if (sc->port[p].bctx != NULL)
				FUNC5(sc->port[p].bctx);
		}
		FUNC10(sc);
	}

	return (ret);
}