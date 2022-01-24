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
typedef  int /*<<< orphan*/  uint64_t ;
struct vmctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSP ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int MB ; 
 int /*<<< orphan*/  VM_CAP_UNRESTRICTED_GUEST ; 
 int VM_MEM_F_INCORE ; 
 int VM_MEM_F_WIRED ; 
 int /*<<< orphan*/  VM_MMAP_ALL ; 
 int /*<<< orphan*/  VM_REG_GUEST_RIP ; 
 int acpi ; 
 int FUNC0 (struct vmctx*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vmctx*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int FUNC7 () ; 
 int FUNC8 () ; 
 int cores ; 
 struct vmctx* FUNC9 (char*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct vmctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int FUNC16 (int,char**,char*) ; 
 int guest_ncpus ; 
 char* guest_uuid_str ; 
 int guest_vmexit_on_hlt ; 
 int guest_vmexit_on_pause ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (struct vmctx*,int,int) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int FUNC22 () ; 
 scalar_t__ FUNC23 (struct vmctx*) ; 
 int /*<<< orphan*/  FUNC24 (struct vmctx*) ; 
 scalar_t__ FUNC25 () ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 scalar_t__ maxcpus ; 
 int /*<<< orphan*/  FUNC28 () ; 
 int FUNC29 (struct vmctx*,int) ; 
 int FUNC30 (struct vmctx*) ; 
 char* optarg ; 
 scalar_t__ optind ; 
 int /*<<< orphan*/  FUNC31 (struct vmctx*) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (char*) ; 
 int /*<<< orphan*/  FUNC35 (char*) ; 
 int /*<<< orphan*/  progname ; 
 int /*<<< orphan*/  FUNC36 (struct vmctx*,int) ; 
 int /*<<< orphan*/  FUNC37 (struct vmctx*) ; 
 int /*<<< orphan*/  FUNC38 (char*,char*) ; 
 int FUNC39 (struct vmctx*) ; 
 int sockets ; 
 int /*<<< orphan*/  stderr ; 
 int strictio ; 
 int /*<<< orphan*/  strictmsr ; 
 int /*<<< orphan*/  FUNC40 (char*) ; 
 int /*<<< orphan*/  FUNC41 (char*,char*,int /*<<< orphan*/ ) ; 
 int threads ; 
 int /*<<< orphan*/  FUNC42 (char*) ; 
 int /*<<< orphan*/  FUNC43 (int) ; 
 int FUNC44 (struct vmctx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  virtio_msix ; 
 int FUNC45 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC46 (char*,size_t*) ; 
 scalar_t__ FUNC47 (struct vmctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC48 (struct vmctx*,int) ; 
 int FUNC49 (struct vmctx*,size_t,int /*<<< orphan*/ ) ; 
 char* vmname ; 
 int x2apic_mode ; 

int
FUNC50(int argc, char *argv[])
{
	int c, error, dbg_port, gdb_port, err, bvmcons;
	int max_vcpus, mptgen, memflags;
	int rtc_localtime;
	bool gdb_stop;
	struct vmctx *ctx;
	uint64_t rip;
	size_t memsize;
	char *optstr;

	bvmcons = 0;
	progname = FUNC4(argv[0]);
	dbg_port = 0;
	gdb_port = 0;
	gdb_stop = false;
	guest_ncpus = 1;
	sockets = cores = threads = 1;
	maxcpus = 0;
	memsize = 256 * MB;
	mptgen = 1;
	rtc_localtime = 1;
	memflags = 0;

	optstr = "abehuwxACHIPSWYp:g:G:c:s:m:l:U:";
	while ((c = FUNC16(argc, argv, optstr)) != -1) {
		switch (c) {
		case 'a':
			x2apic_mode = 0;
			break;
		case 'A':
			acpi = 1;
			break;
		case 'b':
			bvmcons = 1;
			break;
		case 'p':
                        if (FUNC35(optarg) != 0) {
                            FUNC10(EX_USAGE, "invalid vcpu pinning "
                                 "configuration '%s'", optarg);
                        }
			break;
                case 'c':
			if (FUNC42(optarg) != 0) {
			    FUNC10(EX_USAGE, "invalid cpu topology "
				"'%s'", optarg);
			}
			break;
		case 'C':
			memflags |= VM_MEM_F_INCORE;
			break;
		case 'g':
			dbg_port = FUNC3(optarg);
			break;
		case 'G':
			if (optarg[0] == 'w') {
				gdb_stop = true;
				optarg++;
			}
			gdb_port = FUNC3(optarg);
			break;
		case 'l':
			if (FUNC41(optarg, "help", FUNC40(optarg)) == 0) {
				FUNC27();
				FUNC11(0);
			} else if (FUNC26(optarg) != 0) {
				FUNC10(EX_USAGE, "invalid lpc device "
				    "configuration '%s'", optarg);
			}
			break;
		case 's':
			if (FUNC41(optarg, "help", FUNC40(optarg)) == 0) {
				FUNC33();
				FUNC11(0);
			} else if (FUNC32(optarg) != 0)
				FUNC11(4);
			else
				break;
		case 'S':
			memflags |= VM_MEM_F_WIRED;
			break;
                case 'm':
			error = FUNC46(optarg, &memsize);
			if (error)
				FUNC10(EX_USAGE, "invalid memsize '%s'", optarg);
			break;
		case 'H':
			guest_vmexit_on_hlt = 1;
			break;
		case 'I':
			/*
			 * The "-I" option was used to add an ioapic to the
			 * virtual machine.
			 *
			 * An ioapic is now provided unconditionally for each
			 * virtual machine and this option is now deprecated.
			 */
			break;
		case 'P':
			guest_vmexit_on_pause = 1;
			break;
		case 'e':
			strictio = 1;
			break;
		case 'u':
			rtc_localtime = 0;
			break;
		case 'U':
			guest_uuid_str = optarg;
			break;
		case 'w':
			strictmsr = 0;
			break;
		case 'W':
			virtio_msix = 0;
			break;
		case 'x':
			x2apic_mode = 1;
			break;
		case 'Y':
			mptgen = 0;
			break;
		case 'h':
			FUNC43(0);			
		default:
			FUNC43(1);
		}
	}
	argc -= optind;
	argv += optind;

	if (argc != 1)
		FUNC43(1);

	vmname = argv[0];
	ctx = FUNC9(vmname);

	max_vcpus = FUNC30(ctx);
	if (guest_ncpus > max_vcpus) {
		FUNC14(stderr, "%d vCPUs requested but only %d available\n",
			guest_ncpus, max_vcpus);
		FUNC11(4);
	}

	FUNC13(ctx, BSP);

	FUNC48(ctx, memflags);
	err = FUNC49(ctx, memsize, VM_MMAP_ALL);
	if (err) {
		FUNC14(stderr, "Unable to setup memory (%d)\n", errno);
		FUNC11(4);
	}

	error = FUNC22();
	if (error) {
		FUNC14(stderr, "init_msr error %d", error);
		FUNC11(4);
	}

	FUNC21();
	FUNC20();
	FUNC2(ctx);
	FUNC31(ctx);
	FUNC24(ctx);

	FUNC36(ctx, rtc_localtime);
	FUNC37(ctx);

	/*
	 * Exit if a device emulation finds an error in its initilization
	 */
	if (FUNC23(ctx) != 0) {
		FUNC34("device emulation initialization error");
		FUNC11(4);
	}

	if (dbg_port != 0)
		FUNC18(dbg_port);

	if (gdb_port != 0)
		FUNC19(ctx, gdb_port, gdb_stop);

	if (bvmcons)
		FUNC17();

	if (FUNC25()) {
		if (FUNC47(ctx, BSP, VM_CAP_UNRESTRICTED_GUEST, 1)) {
			FUNC14(stderr, "ROM boot failed: unrestricted guest "
			    "capability not available\n");
			FUNC11(4);
		}
		error = FUNC44(ctx, BSP);
		FUNC1(error == 0);
	}

	error = FUNC45(ctx, BSP, VM_REG_GUEST_RIP, &rip);
	FUNC1(error == 0);

	/*
	 * build the guest tables, MP etc.
	 */
	if (mptgen) {
		error = FUNC29(ctx, guest_ncpus);
		if (error) {
			FUNC34("error to build the guest tables");
			FUNC11(4);
		}
	}

	error = FUNC39(ctx);
	FUNC1(error == 0);

	if (acpi) {
		error = FUNC0(ctx, guest_ncpus);
		FUNC1(error == 0);
	}

	if (FUNC25())
		FUNC15();

	/*
	 * Change the proc title to include the VM name.
	 */
	FUNC38("%s", vmname);

#ifndef WITHOUT_CAPSICUM
	FUNC5();

	if (FUNC8() == -1 || FUNC7() == -1)
		FUNC10(EX_OSERR, "Unable to apply rights for sandbox");

	if (FUNC6() == -1)
		FUNC10(EX_OSERR, "cap_enter() failed");
#endif

	/*
	 * Add CPU 0
	 */
	FUNC12(ctx, BSP, BSP, rip);

	/*
	 * Head off to the main event dispatch loop
	 */
	FUNC28();

	FUNC11(4);
}