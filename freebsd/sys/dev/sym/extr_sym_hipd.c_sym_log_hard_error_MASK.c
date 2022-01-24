#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u_short ;
typedef  int u_char ;
typedef  int u32 ;
typedef  TYPE_1__* hcb_p ;
struct TYPE_4__ {int scripta_ba; int scripta_sz; int scriptb_ba; int scriptb_sz; int /*<<< orphan*/  device; scalar_t__ scriptb0; scalar_t__ scripta0; } ;

/* Variables and functions */
 int BF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int MDPE ; 
 int /*<<< orphan*/  PCIR_STATUS ; 
 int /*<<< orphan*/  nc_dbc ; 
 int /*<<< orphan*/  nc_dsp ; 
 int /*<<< orphan*/  nc_sbcl ; 
 int /*<<< orphan*/  nc_sbdl ; 
 int /*<<< orphan*/  nc_scntl3 ; 
 int /*<<< orphan*/  nc_sdid ; 
 int /*<<< orphan*/  nc_socl ; 
 int /*<<< orphan*/  nc_sxfer ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int FUNC6 (int) ; 
 char* FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(hcb_p np, u_short sist, u_char dstat)
{
	u32	dsp;
	int	script_ofs;
	int	script_size;
	char	*script_name;
	u_char	*script_base;
	int	i;

	dsp	= FUNC2 (nc_dsp);

	if	(dsp > np->scripta_ba &&
		 dsp <= np->scripta_ba + np->scripta_sz) {
		script_ofs	= dsp - np->scripta_ba;
		script_size	= np->scripta_sz;
		script_base	= (u_char *) np->scripta0;
		script_name	= "scripta";
	}
	else if (np->scriptb_ba < dsp &&
		 dsp <= np->scriptb_ba + np->scriptb_sz) {
		script_ofs	= dsp - np->scriptb_ba;
		script_size	= np->scriptb_sz;
		script_base	= (u_char *) np->scriptb0;
		script_name	= "scriptb";
	} else {
		script_ofs	= dsp;
		script_size	= 0;
		script_base	= NULL;
		script_name	= "mem";
	}

	FUNC5 ("%s:%d: ERROR (%x:%x) (%x-%x-%x) (%x/%x) @ (%s %x:%08x).\n",
		FUNC7 (np), (unsigned)FUNC0 (nc_sdid)&0x0f, dstat, sist,
		(unsigned)FUNC0 (nc_socl), (unsigned)FUNC0 (nc_sbcl),
		(unsigned)FUNC0 (nc_sbdl), (unsigned)FUNC0 (nc_sxfer),
		(unsigned)FUNC0 (nc_scntl3), script_name, script_ofs,
		(unsigned)FUNC2 (nc_dbc));

	if (((script_ofs & 3) == 0) &&
	    (unsigned)script_ofs < script_size) {
		FUNC5 ("%s: script cmd = %08x\n", FUNC7(np),
			FUNC6((int) *(u32 *)(script_base + script_ofs)));
	}

        FUNC5 ("%s: regdump:", FUNC7(np));
        for (i=0; i<24;i++)
            FUNC5 (" %02x", (unsigned)FUNC1(i));
        FUNC5 (".\n");

	/*
	 *  PCI BUS error, read the PCI ststus register.
	 */
	if (dstat & (MDPE|BF)) {
		u_short pci_sts;
		pci_sts = FUNC3(np->device, PCIR_STATUS, 2);
		if (pci_sts & 0xf900) {
			FUNC4(np->device, PCIR_STATUS, pci_sts, 2);
			FUNC5("%s: PCI STATUS = 0x%04x\n",
				FUNC7(np), pci_sts & 0xf900);
		}
	}
}