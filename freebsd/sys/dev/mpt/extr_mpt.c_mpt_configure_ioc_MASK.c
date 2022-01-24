#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int MsgVersion; int HeaderVersion; int MaxChainDepth; int RequestFrameSize; int NumberOfPorts; int Flags; int /*<<< orphan*/  FWImageSize; int /*<<< orphan*/  BlockSize; int /*<<< orphan*/  GlobalCredits; int /*<<< orphan*/  IOCNumber; int /*<<< orphan*/  MsgLength; } ;
struct mpt_softc {int max_seg_cnt; scalar_t__ fw_uploaded; int is_fc; int is_sas; int is_spi; scalar_t__ mpt_ini_id; int /*<<< orphan*/  role; TYPE_2__* port_facts; TYPE_4__ ioc_facts; int /*<<< orphan*/ * fw_image; int /*<<< orphan*/  fw_dmat; int /*<<< orphan*/  fw_dmap; int /*<<< orphan*/  fw_phys; int /*<<< orphan*/  fw_image_size; int /*<<< orphan*/  parent_dmat; int /*<<< orphan*/  max_cam_seg_cnt; TYPE_1__* request_pool; } ;
struct mpt_map_info {int /*<<< orphan*/  phys; scalar_t__ error; struct mpt_softc* mpt; } ;
struct TYPE_10__ {int /*<<< orphan*/  callout; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ request_t ;
struct TYPE_11__ {int ProtocolFlags; scalar_t__ PortSCSIID; int /*<<< orphan*/  PortType; int /*<<< orphan*/  MaxDevices; } ;
typedef  TYPE_2__* PTR_MSG_PORT_FACTS_REPLY ;
typedef  int /*<<< orphan*/  MSG_PORT_FACTS_REPLY ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int EIO ; 
 int ENOMEM ; 
 int ENXIO ; 
 int /*<<< orphan*/  FALSE ; 
 int MAXPHYS ; 
 int MPI_IOCFACTS_FLAGS_FW_DOWNLOAD_BOOT ; 
 int /*<<< orphan*/  MPI_PORTFACTS_PORTTYPE_FC ; 
 int /*<<< orphan*/  MPI_PORTFACTS_PORTTYPE_INACTIVE ; 
 int /*<<< orphan*/  MPI_PORTFACTS_PORTTYPE_ISCSI ; 
 int /*<<< orphan*/  MPI_PORTFACTS_PORTTYPE_SAS ; 
 int /*<<< orphan*/  MPI_PORTFACTS_PORTTYPE_SCSI ; 
 int MPI_PORTFACTS_PROTOCOL_INITIATOR ; 
 int MPI_PORTFACTS_PROTOCOL_TARGET ; 
 scalar_t__ MPT_DB_STATE_READY ; 
 scalar_t__ MPT_INI_ID_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct mpt_softc*) ; 
 int FUNC1 (struct mpt_softc*) ; 
 int MPT_MAX_TRYS ; 
 int FUNC2 (struct mpt_softc*) ; 
 int FUNC3 (struct mpt_softc*) ; 
 int MPT_OK ; 
 int MPT_PRT_DEBUG ; 
 int MPT_PRT_INFO ; 
 int /*<<< orphan*/  MPT_ROLE_INITIATOR ; 
 int /*<<< orphan*/  MPT_ROLE_NONE ; 
 int /*<<< orphan*/  MPT_ROLE_TARGET ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mpt_softc*) ; 
 int /*<<< orphan*/  M_DEVBUF ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  REQ_STATE_ALLOCATED ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct mpt_map_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,void**,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC12 (size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC16 (struct mpt_softc*,int /*<<< orphan*/ *) ; 
 int FUNC17 (struct mpt_softc*) ; 
 int FUNC18 (struct mpt_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC19 (struct mpt_softc*,int) ; 
 int /*<<< orphan*/  FUNC20 (struct mpt_softc*,TYPE_1__*) ; 
 int FUNC21 (struct mpt_softc*,TYPE_4__*) ; 
 int FUNC22 (struct mpt_softc*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC23 (struct mpt_softc*,int,char*,int,int,...) ; 
 int /*<<< orphan*/  mpt_map_rquest ; 
 int /*<<< orphan*/  FUNC24 (struct mpt_softc*,char*,...) ; 
 int /*<<< orphan*/  FUNC25 (struct mpt_softc*) ; 
 int /*<<< orphan*/  FUNC26 (struct mpt_softc*) ; 
 int FUNC27 (struct mpt_softc*,int /*<<< orphan*/ ) ; 
 int FUNC28 (struct mpt_softc*) ; 

__attribute__((used)) static int
FUNC29(struct mpt_softc *mpt, int tn, int needreset)
{
	PTR_MSG_PORT_FACTS_REPLY pfp;
	int error, port, val;
	size_t len;

	if (tn == MPT_MAX_TRYS) {
		return (-1);
	}

	/*
	 * No need to reset if the IOC is already in the READY state.
	 *
	 * Force reset if initialization failed previously.
	 * Note that a hard_reset of the second channel of a '929
	 * will stop operation of the first channel.  Hopefully, if the
	 * first channel is ok, the second will not require a hard
	 * reset.
	 */
	if (needreset || FUNC4(FUNC25(mpt)) != MPT_DB_STATE_READY) {
		if (FUNC27(mpt, FALSE) != MPT_OK) {
			return (FUNC29(mpt, tn++, 1));
		}
		needreset = 0;
	}

	if (FUNC21(mpt, &mpt->ioc_facts) != MPT_OK) {
		FUNC24(mpt, "mpt_get_iocfacts failed\n");
		return (FUNC29(mpt, tn++, 1));
	}
	FUNC14(&mpt->ioc_facts);

	FUNC24(mpt, "MPI Version=%d.%d.%d.%d\n",
	    mpt->ioc_facts.MsgVersion >> 8,
	    mpt->ioc_facts.MsgVersion & 0xFF,
	    mpt->ioc_facts.HeaderVersion >> 8,
	    mpt->ioc_facts.HeaderVersion & 0xFF);

	/*
	 * Now that we know request frame size, we can calculate
	 * the actual (reasonable) segment limit for read/write I/O.
	 *
	 * This limit is constrained by:
	 *
	 *  + The size of each area we allocate per command (and how
	 *    many chain segments we can fit into it).
	 *  + The total number of areas we've set up.
	 *  + The actual chain depth the card will allow.
	 *
	 * The first area's segment count is limited by the I/O request
	 * at the head of it. We cannot allocate realistically more
	 * than MPT_MAX_REQUESTS areas. Therefore, to account for both
	 * conditions, we'll just start out with MPT_MAX_REQUESTS-2.
	 *
	 */
	/* total number of request areas we (can) allocate */
	mpt->max_seg_cnt = FUNC1(mpt) - 2;

	/* converted to the number of chain areas possible */
	mpt->max_seg_cnt *= FUNC2(mpt);

	/* limited by the number of chain areas the card will support */
	if (mpt->max_seg_cnt > mpt->ioc_facts.MaxChainDepth) {
		FUNC23(mpt, MPT_PRT_INFO,
		    "chain depth limited to %u (from %u)\n",
		    mpt->ioc_facts.MaxChainDepth, mpt->max_seg_cnt);
		mpt->max_seg_cnt = mpt->ioc_facts.MaxChainDepth;
	}

	/* converted to the number of simple sges in chain segments. */
	mpt->max_seg_cnt *= (FUNC3(mpt) - 1);

	/*
	 * Use this as the basis for reporting the maximum I/O size to CAM.
	 */
	mpt->max_cam_seg_cnt = FUNC13(mpt->max_seg_cnt, (MAXPHYS / PAGE_SIZE) + 1);

	/* XXX Lame Locking! */
	FUNC5(mpt);
	error = FUNC17(mpt);
	FUNC0(mpt);

	if (error != 0) {
		FUNC24(mpt, "mpt_dma_buf_alloc() failed!\n");
		return (EIO);
	}

	for (val = 0; val < FUNC1(mpt); val++) {
		request_t *req = &mpt->request_pool[val];
		req->state = REQ_STATE_ALLOCATED;
		FUNC16(mpt, &req->callout);
		FUNC20(mpt, req);
	}

	FUNC23(mpt, MPT_PRT_INFO, "Maximum Segment Count: %u, Maximum "
		 "CAM Segment Count: %u\n", mpt->max_seg_cnt,
		 mpt->max_cam_seg_cnt);

	FUNC23(mpt, MPT_PRT_INFO, "MsgLength=%u IOCNumber = %d\n",
	    mpt->ioc_facts.MsgLength, mpt->ioc_facts.IOCNumber);
	FUNC23(mpt, MPT_PRT_INFO,
	    "IOCFACTS: GlobalCredits=%d BlockSize=%u bytes "
	    "Request Frame Size %u bytes Max Chain Depth %u\n",
	    mpt->ioc_facts.GlobalCredits, mpt->ioc_facts.BlockSize,
	    mpt->ioc_facts.RequestFrameSize << 2,
	    mpt->ioc_facts.MaxChainDepth);
	FUNC23(mpt, MPT_PRT_INFO, "IOCFACTS: Num Ports %d, FWImageSize %d, "
	    "Flags=%#x\n", mpt->ioc_facts.NumberOfPorts,
	    mpt->ioc_facts.FWImageSize, mpt->ioc_facts.Flags);

	len = mpt->ioc_facts.NumberOfPorts * sizeof (MSG_PORT_FACTS_REPLY);
	mpt->port_facts = FUNC12(len, M_DEVBUF, M_NOWAIT | M_ZERO);
	if (mpt->port_facts == NULL) {
		FUNC24(mpt, "unable to allocate memory for port facts\n");
		return (ENOMEM);
	}


	if ((mpt->ioc_facts.Flags & MPI_IOCFACTS_FLAGS_FW_DOWNLOAD_BOOT) &&
	    (mpt->fw_uploaded == 0)) {
		struct mpt_map_info mi;

		/*
		 * In some configurations, the IOC's firmware is
		 * stored in a shared piece of system NVRAM that
		 * is only accessible via the BIOS.  In this
		 * case, the firmware keeps a copy of firmware in
		 * RAM until the OS driver retrieves it.  Once
		 * retrieved, we are responsible for re-downloading
		 * the firmware after any hard-reset.
		 */
		FUNC5(mpt);
		mpt->fw_image_size = mpt->ioc_facts.FWImageSize;
		error = FUNC18(mpt, mpt->parent_dmat, 1, 0,
		    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
		    mpt->fw_image_size, 1, mpt->fw_image_size, 0,
		    &mpt->fw_dmat);
		if (error != 0) {
			FUNC24(mpt, "cannot create firmware dma tag\n");
			FUNC0(mpt);
			return (ENOMEM);
		}
		error = FUNC9(mpt->fw_dmat,
		    (void **)&mpt->fw_image, BUS_DMA_NOWAIT |
		    BUS_DMA_COHERENT, &mpt->fw_dmap);
		if (error != 0) {
			FUNC24(mpt, "cannot allocate firmware memory\n");
			FUNC6(mpt->fw_dmat);
			FUNC0(mpt);
			return (ENOMEM);
		}
		mi.mpt = mpt;
		mi.error = 0;
		FUNC7(mpt->fw_dmat, mpt->fw_dmap,
		    mpt->fw_image, mpt->fw_image_size, mpt_map_rquest, &mi, 0);
		mpt->fw_phys = mi.phys;

		FUNC0(mpt);
		error = FUNC28(mpt);
		if (error != 0) {
			FUNC24(mpt, "firmware upload failed.\n");
			FUNC8(mpt->fw_dmat, mpt->fw_dmap);
			FUNC10(mpt->fw_dmat, mpt->fw_image,
			    mpt->fw_dmap);
			FUNC6(mpt->fw_dmat);
			mpt->fw_image = NULL;
			return (EIO);
		}
		mpt->fw_uploaded = 1;
	}

	for (port = 0; port < mpt->ioc_facts.NumberOfPorts; port++) {
		pfp = &mpt->port_facts[port];
		error = FUNC22(mpt, 0, pfp);
		if (error != MPT_OK) {
			FUNC24(mpt,
			    "mpt_get_portfacts on port %d failed\n", port);
			FUNC11(mpt->port_facts, M_DEVBUF);
			mpt->port_facts = NULL;
			return (FUNC29(mpt, tn++, 1));
		}
		FUNC15(pfp);

		if (port > 0) {
			error = MPT_PRT_INFO;
		} else {
			error = MPT_PRT_DEBUG;
		}
		FUNC23(mpt, error,
		    "PORTFACTS[%d]: Type %x PFlags %x IID %d MaxDev %d\n",
		    port, pfp->PortType, pfp->ProtocolFlags, pfp->PortSCSIID,
		    pfp->MaxDevices);

	}

	/*
	 * XXX: Not yet supporting more than port 0
	 */
	pfp = &mpt->port_facts[0];
	if (pfp->PortType == MPI_PORTFACTS_PORTTYPE_FC) {
		mpt->is_fc = 1;
		mpt->is_sas = 0;
		mpt->is_spi = 0;
	} else if (pfp->PortType == MPI_PORTFACTS_PORTTYPE_SAS) {
		mpt->is_fc = 0;
		mpt->is_sas = 1;
		mpt->is_spi = 0;
	} else if (pfp->PortType == MPI_PORTFACTS_PORTTYPE_SCSI) {
		mpt->is_fc = 0;
		mpt->is_sas = 0;
		mpt->is_spi = 1;
		if (mpt->mpt_ini_id == MPT_INI_ID_NONE)
			mpt->mpt_ini_id = pfp->PortSCSIID;
	} else if (pfp->PortType == MPI_PORTFACTS_PORTTYPE_ISCSI) {
		FUNC24(mpt, "iSCSI not supported yet\n");
		return (ENXIO);
	} else if (pfp->PortType == MPI_PORTFACTS_PORTTYPE_INACTIVE) {
		FUNC24(mpt, "Inactive Port\n");
		return (ENXIO);
	} else {
		FUNC24(mpt, "unknown Port Type %#x\n", pfp->PortType);
		return (ENXIO);
	}

	/*
	 * Set our role with what this port supports.
	 *
	 * Note this might be changed later in different modules
	 * if this is different from what is wanted.
	 */
	mpt->role = MPT_ROLE_NONE;
	if (pfp->ProtocolFlags & MPI_PORTFACTS_PROTOCOL_INITIATOR) {
		mpt->role |= MPT_ROLE_INITIATOR;
	}
	if (pfp->ProtocolFlags & MPI_PORTFACTS_PROTOCOL_TARGET) {
		mpt->role |= MPT_ROLE_TARGET;
	}

	/*
	 * Enable the IOC
	 */
	if (FUNC19(mpt, 1) != MPT_OK) {
		FUNC24(mpt, "unable to initialize IOC\n");
		return (ENXIO);
	}

	/*
	 * Read IOC configuration information.
	 *
	 * We need this to determine whether or not we have certain
	 * settings for Integrated Mirroring (e.g.).
	 */
	FUNC26(mpt);

	return (0);
}