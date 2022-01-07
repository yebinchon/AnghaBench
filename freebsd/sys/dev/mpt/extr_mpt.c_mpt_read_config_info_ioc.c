
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
struct mpt_softc {int raid_max_volumes; size_t raid_page0_len; int raid_max_disks; TYPE_3__* ioc_page3; TYPE_4__* ioc_page2; int * raid_disks; struct mpt_raid_volume* raid_volumes; } ;
struct mpt_raid_volume {int * config_page; } ;
struct mpt_raid_disk {int dummy; } ;
typedef int hdr ;
struct TYPE_8__ {int CapabilitiesFlags; int NumActiveVolumes; int MaxVolumes; int NumActivePhysDisks; int MaxPhysDisks; int Header; } ;
struct TYPE_7__ {int Header; } ;
struct TYPE_6__ {int PageLength; int PageType; int PageNumber; int PageVersion; } ;
typedef int RAID_VOL0_PHYS_DISK ;
typedef TYPE_1__ CONFIG_PAGE_HEADER ;


 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 int FALSE ;
 int MPI_CONFIG_PAGETYPE_IOC ;






 int MPT_PRT_DEBUG ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 void* malloc (size_t,int ,int) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int mpt2host_config_page_ioc2 (TYPE_4__*) ;
 int mpt2host_config_page_ioc3 (TYPE_3__*) ;
 int mpt_lprt (struct mpt_softc*,int ,char*,int ,int,int ,int ) ;
 int mpt_prt (struct mpt_softc*,char*,...) ;
 int mpt_prtc (struct mpt_softc*,char*) ;
 int mpt_raid_free_mem (struct mpt_softc*) ;
 int mpt_raid_wakeup (struct mpt_softc*) ;
 int mpt_read_cfg_header (struct mpt_softc*,int ,int,int ,TYPE_1__*,int ,int) ;
 int mpt_read_cur_cfg_page (struct mpt_softc*,int ,int *,size_t,int ,int) ;

__attribute__((used)) static int
mpt_read_config_info_ioc(struct mpt_softc *mpt)
{
 CONFIG_PAGE_HEADER hdr;
 struct mpt_raid_volume *mpt_raid;
 int rv;
 int i;
 size_t len;

 rv = mpt_read_cfg_header(mpt, MPI_CONFIG_PAGETYPE_IOC,
  2, 0, &hdr, FALSE, 5000);



 if (rv == EINVAL) {
  return (0);
 }
 if (rv) {
  return (rv);
 }

 mpt_lprt(mpt, MPT_PRT_DEBUG,
     "IOC Page 2 Header: Version %x len %x PageNumber %x PageType %x\n",
     hdr.PageVersion, hdr.PageLength << 2,
     hdr.PageNumber, hdr.PageType);

 len = hdr.PageLength * sizeof(uint32_t);
 mpt->ioc_page2 = malloc(len, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mpt->ioc_page2 == ((void*)0)) {
  mpt_prt(mpt, "unable to allocate memory for IOC page 2\n");
  mpt_raid_free_mem(mpt);
  return (ENOMEM);
 }
 memcpy(&mpt->ioc_page2->Header, &hdr, sizeof(hdr));
 rv = mpt_read_cur_cfg_page(mpt, 0,
     &mpt->ioc_page2->Header, len, FALSE, 5000);
 if (rv) {
  mpt_prt(mpt, "failed to read IOC Page 2\n");
  mpt_raid_free_mem(mpt);
  return (EIO);
 }
 mpt2host_config_page_ioc2(mpt->ioc_page2);

 if (mpt->ioc_page2->CapabilitiesFlags != 0) {
  uint32_t mask;

  mpt_prt(mpt, "Capabilities: (");
  for (mask = 1; mask != 0; mask <<= 1) {
   if ((mpt->ioc_page2->CapabilitiesFlags & mask) == 0) {
    continue;
   }
   switch (mask) {
   case 130:
    mpt_prtc(mpt, " RAID-0");
    break;
   case 132:
    mpt_prtc(mpt, " RAID-1E");
    break;
   case 131:
    mpt_prtc(mpt, " RAID-1");
    break;
   case 128:
    mpt_prtc(mpt, " SES");
    break;
   case 129:
    mpt_prtc(mpt, " SAFTE");
    break;
   case 133:
    mpt_prtc(mpt, " Multi-Channel-Arrays");
   default:
    break;
   }
  }
  mpt_prtc(mpt, " )\n");
  if ((mpt->ioc_page2->CapabilitiesFlags
     & (130
      | 132
      | 131)) != 0) {
   mpt_prt(mpt, "%d Active Volume%s(%d Max)\n",
    mpt->ioc_page2->NumActiveVolumes,
    mpt->ioc_page2->NumActiveVolumes != 1
         ? "s " : " ",
    mpt->ioc_page2->MaxVolumes);
   mpt_prt(mpt, "%d Hidden Drive Member%s(%d Max)\n",
    mpt->ioc_page2->NumActivePhysDisks,
    mpt->ioc_page2->NumActivePhysDisks != 1
         ? "s " : " ",
    mpt->ioc_page2->MaxPhysDisks);
  }
 }

 len = mpt->ioc_page2->MaxVolumes * sizeof(struct mpt_raid_volume);
 mpt->raid_volumes = malloc(len, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mpt->raid_volumes == ((void*)0)) {
  mpt_prt(mpt, "Could not allocate RAID volume data\n");
  mpt_raid_free_mem(mpt);
  return (ENOMEM);
 }






 mpt->raid_max_volumes = mpt->ioc_page2->MaxVolumes;

 len = sizeof(*mpt->raid_volumes->config_page) +
     (sizeof (RAID_VOL0_PHYS_DISK) * (mpt->ioc_page2->MaxPhysDisks - 1));
 for (i = 0; i < mpt->ioc_page2->MaxVolumes; i++) {
  mpt_raid = &mpt->raid_volumes[i];
  mpt_raid->config_page =
      malloc(len, M_DEVBUF, M_NOWAIT | M_ZERO);
  if (mpt_raid->config_page == ((void*)0)) {
   mpt_prt(mpt, "Could not allocate RAID page data\n");
   mpt_raid_free_mem(mpt);
   return (ENOMEM);
  }
 }
 mpt->raid_page0_len = len;

 len = mpt->ioc_page2->MaxPhysDisks * sizeof(struct mpt_raid_disk);
 mpt->raid_disks = malloc(len, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mpt->raid_disks == ((void*)0)) {
  mpt_prt(mpt, "Could not allocate RAID disk data\n");
  mpt_raid_free_mem(mpt);
  return (ENOMEM);
 }
 mpt->raid_max_disks = mpt->ioc_page2->MaxPhysDisks;




 rv = mpt_read_cfg_header(mpt, MPI_CONFIG_PAGETYPE_IOC,
     3, 0, &hdr, FALSE, 5000);
 if (rv) {
  mpt_raid_free_mem(mpt);
  return (EIO);
 }

 mpt_lprt(mpt, MPT_PRT_DEBUG, "IOC Page 3 Header: %x %x %x %x\n",
     hdr.PageVersion, hdr.PageLength, hdr.PageNumber, hdr.PageType);

 len = hdr.PageLength * sizeof(uint32_t);
 mpt->ioc_page3 = malloc(len, M_DEVBUF, M_NOWAIT | M_ZERO);
 if (mpt->ioc_page3 == ((void*)0)) {
  mpt_prt(mpt, "unable to allocate memory for IOC page 3\n");
  mpt_raid_free_mem(mpt);
  return (ENOMEM);
 }
 memcpy(&mpt->ioc_page3->Header, &hdr, sizeof(hdr));
 rv = mpt_read_cur_cfg_page(mpt, 0,
     &mpt->ioc_page3->Header, len, FALSE, 5000);
 if (rv) {
  mpt_raid_free_mem(mpt);
  return (EIO);
 }
 mpt2host_config_page_ioc3(mpt->ioc_page3);
 mpt_raid_wakeup(mpt);
 return (0);
}
