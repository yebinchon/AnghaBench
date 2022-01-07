
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int MsgVersion; int HeaderVersion; int MaxChainDepth; int RequestFrameSize; int NumberOfPorts; int Flags; int FWImageSize; int BlockSize; int GlobalCredits; int IOCNumber; int MsgLength; } ;
struct mpt_softc {int max_seg_cnt; scalar_t__ fw_uploaded; int is_fc; int is_sas; int is_spi; scalar_t__ mpt_ini_id; int role; TYPE_2__* port_facts; TYPE_4__ ioc_facts; int * fw_image; int fw_dmat; int fw_dmap; int fw_phys; int fw_image_size; int parent_dmat; int max_cam_seg_cnt; TYPE_1__* request_pool; } ;
struct mpt_map_info {int phys; scalar_t__ error; struct mpt_softc* mpt; } ;
struct TYPE_10__ {int callout; int state; } ;
typedef TYPE_1__ request_t ;
struct TYPE_11__ {int ProtocolFlags; scalar_t__ PortSCSIID; int PortType; int MaxDevices; } ;
typedef TYPE_2__* PTR_MSG_PORT_FACTS_REPLY ;
typedef int MSG_PORT_FACTS_REPLY ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int EIO ;
 int ENOMEM ;
 int ENXIO ;
 int FALSE ;
 int MAXPHYS ;
 int MPI_IOCFACTS_FLAGS_FW_DOWNLOAD_BOOT ;
 int MPI_PORTFACTS_PORTTYPE_FC ;
 int MPI_PORTFACTS_PORTTYPE_INACTIVE ;
 int MPI_PORTFACTS_PORTTYPE_ISCSI ;
 int MPI_PORTFACTS_PORTTYPE_SAS ;
 int MPI_PORTFACTS_PORTTYPE_SCSI ;
 int MPI_PORTFACTS_PROTOCOL_INITIATOR ;
 int MPI_PORTFACTS_PROTOCOL_TARGET ;
 scalar_t__ MPT_DB_STATE_READY ;
 scalar_t__ MPT_INI_ID_NONE ;
 int MPT_LOCK (struct mpt_softc*) ;
 int MPT_MAX_REQUESTS (struct mpt_softc*) ;
 int MPT_MAX_TRYS ;
 int MPT_NRFM (struct mpt_softc*) ;
 int MPT_NSGL (struct mpt_softc*) ;
 int MPT_OK ;
 int MPT_PRT_DEBUG ;
 int MPT_PRT_INFO ;
 int MPT_ROLE_INITIATOR ;
 int MPT_ROLE_NONE ;
 int MPT_ROLE_TARGET ;
 scalar_t__ MPT_STATE (int ) ;
 int MPT_UNLOCK (struct mpt_softc*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PAGE_SIZE ;
 int REQ_STATE_ALLOCATED ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_load (int ,int ,int *,int ,int ,struct mpt_map_info*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,int *,int ) ;
 int free (TYPE_2__*,int ) ;
 TYPE_2__* malloc (size_t,int ,int) ;
 int min (int,int) ;
 int mpt2host_iocfacts_reply (TYPE_4__*) ;
 int mpt2host_portfacts_reply (TYPE_2__*) ;
 int mpt_callout_init (struct mpt_softc*,int *) ;
 int mpt_dma_buf_alloc (struct mpt_softc*) ;
 int mpt_dma_tag_create (struct mpt_softc*,int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *) ;
 int mpt_enable_ioc (struct mpt_softc*,int) ;
 int mpt_free_request (struct mpt_softc*,TYPE_1__*) ;
 int mpt_get_iocfacts (struct mpt_softc*,TYPE_4__*) ;
 int mpt_get_portfacts (struct mpt_softc*,int ,TYPE_2__*) ;
 int mpt_lprt (struct mpt_softc*,int,char*,int,int,...) ;
 int mpt_map_rquest ;
 int mpt_prt (struct mpt_softc*,char*,...) ;
 int mpt_rd_db (struct mpt_softc*) ;
 int mpt_read_config_info_ioc (struct mpt_softc*) ;
 int mpt_reset (struct mpt_softc*,int ) ;
 int mpt_upload_fw (struct mpt_softc*) ;

__attribute__((used)) static int
mpt_configure_ioc(struct mpt_softc *mpt, int tn, int needreset)
{
 PTR_MSG_PORT_FACTS_REPLY pfp;
 int error, port, val;
 size_t len;

 if (tn == MPT_MAX_TRYS) {
  return (-1);
 }
 if (needreset || MPT_STATE(mpt_rd_db(mpt)) != MPT_DB_STATE_READY) {
  if (mpt_reset(mpt, FALSE) != MPT_OK) {
   return (mpt_configure_ioc(mpt, tn++, 1));
  }
  needreset = 0;
 }

 if (mpt_get_iocfacts(mpt, &mpt->ioc_facts) != MPT_OK) {
  mpt_prt(mpt, "mpt_get_iocfacts failed\n");
  return (mpt_configure_ioc(mpt, tn++, 1));
 }
 mpt2host_iocfacts_reply(&mpt->ioc_facts);

 mpt_prt(mpt, "MPI Version=%d.%d.%d.%d\n",
     mpt->ioc_facts.MsgVersion >> 8,
     mpt->ioc_facts.MsgVersion & 0xFF,
     mpt->ioc_facts.HeaderVersion >> 8,
     mpt->ioc_facts.HeaderVersion & 0xFF);
 mpt->max_seg_cnt = MPT_MAX_REQUESTS(mpt) - 2;


 mpt->max_seg_cnt *= MPT_NRFM(mpt);


 if (mpt->max_seg_cnt > mpt->ioc_facts.MaxChainDepth) {
  mpt_lprt(mpt, MPT_PRT_INFO,
      "chain depth limited to %u (from %u)\n",
      mpt->ioc_facts.MaxChainDepth, mpt->max_seg_cnt);
  mpt->max_seg_cnt = mpt->ioc_facts.MaxChainDepth;
 }


 mpt->max_seg_cnt *= (MPT_NSGL(mpt) - 1);




 mpt->max_cam_seg_cnt = min(mpt->max_seg_cnt, (MAXPHYS / PAGE_SIZE) + 1);


 MPT_UNLOCK(mpt);
 error = mpt_dma_buf_alloc(mpt);
 MPT_LOCK(mpt);

 if (error != 0) {
  mpt_prt(mpt, "mpt_dma_buf_alloc() failed!\n");
  return (EIO);
 }

 for (val = 0; val < MPT_MAX_REQUESTS(mpt); val++) {
  request_t *req = &mpt->request_pool[val];
  req->state = REQ_STATE_ALLOCATED;
  mpt_callout_init(mpt, &req->callout);
  mpt_free_request(mpt, req);
 }

 mpt_lprt(mpt, MPT_PRT_INFO, "Maximum Segment Count: %u, Maximum "
   "CAM Segment Count: %u\n", mpt->max_seg_cnt,
   mpt->max_cam_seg_cnt);

 mpt_lprt(mpt, MPT_PRT_INFO, "MsgLength=%u IOCNumber = %d\n",
     mpt->ioc_facts.MsgLength, mpt->ioc_facts.IOCNumber);
 mpt_lprt(mpt, MPT_PRT_INFO,
     "IOCFACTS: GlobalCredits=%d BlockSize=%u bytes "
     "Request Frame Size %u bytes Max Chain Depth %u\n",
     mpt->ioc_facts.GlobalCredits, mpt->ioc_facts.BlockSize,
     mpt->ioc_facts.RequestFrameSize << 2,
     mpt->ioc_facts.MaxChainDepth);
 mpt_lprt(mpt, MPT_PRT_INFO, "IOCFACTS: Num Ports %d, FWImageSize %d, "
     "Flags=%#x\n", mpt->ioc_facts.NumberOfPorts,
     mpt->ioc_facts.FWImageSize, mpt->ioc_facts.Flags);

 len = mpt->ioc_facts.NumberOfPorts * sizeof (MSG_PORT_FACTS_REPLY);
 mpt->port_facts = malloc(len, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mpt->port_facts == ((void*)0)) {
  mpt_prt(mpt, "unable to allocate memory for port facts\n");
  return (ENOMEM);
 }


 if ((mpt->ioc_facts.Flags & MPI_IOCFACTS_FLAGS_FW_DOWNLOAD_BOOT) &&
     (mpt->fw_uploaded == 0)) {
  struct mpt_map_info mi;
  MPT_UNLOCK(mpt);
  mpt->fw_image_size = mpt->ioc_facts.FWImageSize;
  error = mpt_dma_tag_create(mpt, mpt->parent_dmat, 1, 0,
      BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, ((void*)0), ((void*)0),
      mpt->fw_image_size, 1, mpt->fw_image_size, 0,
      &mpt->fw_dmat);
  if (error != 0) {
   mpt_prt(mpt, "cannot create firmware dma tag\n");
   MPT_LOCK(mpt);
   return (ENOMEM);
  }
  error = bus_dmamem_alloc(mpt->fw_dmat,
      (void **)&mpt->fw_image, BUS_DMA_NOWAIT |
      BUS_DMA_COHERENT, &mpt->fw_dmap);
  if (error != 0) {
   mpt_prt(mpt, "cannot allocate firmware memory\n");
   bus_dma_tag_destroy(mpt->fw_dmat);
   MPT_LOCK(mpt);
   return (ENOMEM);
  }
  mi.mpt = mpt;
  mi.error = 0;
  bus_dmamap_load(mpt->fw_dmat, mpt->fw_dmap,
      mpt->fw_image, mpt->fw_image_size, mpt_map_rquest, &mi, 0);
  mpt->fw_phys = mi.phys;

  MPT_LOCK(mpt);
  error = mpt_upload_fw(mpt);
  if (error != 0) {
   mpt_prt(mpt, "firmware upload failed.\n");
   bus_dmamap_unload(mpt->fw_dmat, mpt->fw_dmap);
   bus_dmamem_free(mpt->fw_dmat, mpt->fw_image,
       mpt->fw_dmap);
   bus_dma_tag_destroy(mpt->fw_dmat);
   mpt->fw_image = ((void*)0);
   return (EIO);
  }
  mpt->fw_uploaded = 1;
 }

 for (port = 0; port < mpt->ioc_facts.NumberOfPorts; port++) {
  pfp = &mpt->port_facts[port];
  error = mpt_get_portfacts(mpt, 0, pfp);
  if (error != MPT_OK) {
   mpt_prt(mpt,
       "mpt_get_portfacts on port %d failed\n", port);
   free(mpt->port_facts, M_DEVBUF);
   mpt->port_facts = ((void*)0);
   return (mpt_configure_ioc(mpt, tn++, 1));
  }
  mpt2host_portfacts_reply(pfp);

  if (port > 0) {
   error = MPT_PRT_INFO;
  } else {
   error = MPT_PRT_DEBUG;
  }
  mpt_lprt(mpt, error,
      "PORTFACTS[%d]: Type %x PFlags %x IID %d MaxDev %d\n",
      port, pfp->PortType, pfp->ProtocolFlags, pfp->PortSCSIID,
      pfp->MaxDevices);

 }




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
  mpt_prt(mpt, "iSCSI not supported yet\n");
  return (ENXIO);
 } else if (pfp->PortType == MPI_PORTFACTS_PORTTYPE_INACTIVE) {
  mpt_prt(mpt, "Inactive Port\n");
  return (ENXIO);
 } else {
  mpt_prt(mpt, "unknown Port Type %#x\n", pfp->PortType);
  return (ENXIO);
 }







 mpt->role = MPT_ROLE_NONE;
 if (pfp->ProtocolFlags & MPI_PORTFACTS_PROTOCOL_INITIATOR) {
  mpt->role |= MPT_ROLE_INITIATOR;
 }
 if (pfp->ProtocolFlags & MPI_PORTFACTS_PROTOCOL_TARGET) {
  mpt->role |= MPT_ROLE_TARGET;
 }




 if (mpt_enable_ioc(mpt, 1) != MPT_OK) {
  mpt_prt(mpt, "unable to initialize IOC\n");
  return (ENXIO);
 }







 mpt_read_config_info_ioc(mpt);

 return (0);
}
