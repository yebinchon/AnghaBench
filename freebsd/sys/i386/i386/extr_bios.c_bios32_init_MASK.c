#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_long ;
typedef  scalar_t__ u_int8_t ;
struct bios32_SDheader {int len; int entry; int revision; } ;
struct PnPBIOS_table {int len; int pmentrybase; int pmentryoffset; int version; int control; int evflagaddr; int oemdevid; } ;
struct TYPE_4__ {int id; } ;
struct TYPE_5__ {int base; int entry; TYPE_1__ ident; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int BIOS_SIZE ; 
 int BIOS_START ; 
 TYPE_2__ PCIbios ; 
 struct PnPBIOS_table* PnPBIOStable ; 
 int bios32_SDCI ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static void
FUNC7(void *junk)
{
    u_long			sigaddr;
    struct bios32_SDheader	*sdh;
    struct PnPBIOS_table	*pt;
    u_int8_t			ck, *cv;
    int				i;
    char			*p;
    
    /*
     * BIOS32 Service Directory, PCI BIOS
     */
    
    /* look for the signature */
    if ((sigaddr = FUNC2(0, "_32_", 4, 16, 0)) != 0) {

	/* get a virtual pointer to the structure */
	sdh = (struct bios32_SDheader *)(uintptr_t)FUNC0(sigaddr);
	for (cv = (u_int8_t *)sdh, ck = 0, i = 0; i < (sdh->len * 16); i++) {
	    ck += cv[i];
	}
	/* If checksum is OK, enable use of the entrypoint */
	if ((ck == 0) && (BIOS_START <= sdh->entry ) &&
	    (sdh->entry < (BIOS_START + BIOS_SIZE))) {
	    bios32_SDCI = FUNC0(sdh->entry);
	    if (bootverbose) {
		FUNC5("bios32: Found BIOS32 Service Directory header at %p\n", sdh);
		FUNC5("bios32: Entry = 0x%x (%x)  Rev = %d  Len = %d\n", 
		       sdh->entry, bios32_SDCI, sdh->revision, sdh->len);
	    }

	    /* Allow user override of PCI BIOS search */
	    if (((p = FUNC4("machdep.bios.pci")) == NULL) || FUNC6(p, "disable")) {

		/* See if there's a PCI BIOS entrypoint here */
		PCIbios.ident.id = 0x49435024;	/* PCI systems should have this */
		if (!FUNC1(&PCIbios) && bootverbose)
		    FUNC5("pcibios: PCI BIOS entry at 0x%x+0x%x\n", PCIbios.base, PCIbios.entry);
	    }
	    if (p != NULL)
		    FUNC3(p);
	} else {
	    FUNC5("bios32: Bad BIOS32 Service Directory\n");
	}
    }

    /*
     * PnP BIOS
     *
     * Allow user override of PnP BIOS search
     */
    if ((((p = FUNC4("machdep.bios.pnp")) == NULL) || FUNC6(p, "disable")) &&
	((sigaddr = FUNC2(0, "$PnP", 4, 16, 0)) != 0)) {

	/* get a virtual pointer to the structure */
	pt = (struct PnPBIOS_table *)(uintptr_t)FUNC0(sigaddr);
	for (cv = (u_int8_t *)pt, ck = 0, i = 0; i < pt->len; i++) {
	    ck += cv[i];
	}
	/* If checksum is OK, enable use of the entrypoint */
	if (ck == 0) {
	    PnPBIOStable = pt;
	    if (bootverbose) {
		FUNC5("pnpbios: Found PnP BIOS data at %p\n", pt);
		FUNC5("pnpbios: Entry = %x:%x  Rev = %d.%d\n", 
		       pt->pmentrybase, pt->pmentryoffset, pt->version >> 4, pt->version & 0xf);
		if ((pt->control & 0x3) == 0x01)
		    FUNC5("pnpbios: Event flag at %x\n", pt->evflagaddr);
		if (pt->oemdevid != 0)
		    FUNC5("pnpbios: OEM ID %x\n", pt->oemdevid);
		
	    }
	} else {
	    FUNC5("pnpbios: Bad PnP BIOS data checksum\n");
	}
    }
    if (p != NULL)
	    FUNC3(p);
    if (bootverbose) {
	    /* look for other know signatures */
	    FUNC5("Other BIOS signatures found:\n");
    }
}