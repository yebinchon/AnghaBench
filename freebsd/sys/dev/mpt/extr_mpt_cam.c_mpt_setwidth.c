
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mpt_softc {TYPE_1__* mpt_dev_page1; } ;
struct TYPE_2__ {int RequestedParameters; } ;
typedef TYPE_1__* PTR_CONFIG_PAGE_SCSI_DEVICE_1 ;


 int MPI_SCSIDEVPAGE1_RP_WIDE ;

__attribute__((used)) static void
mpt_setwidth(struct mpt_softc *mpt, int tgt, int onoff)
{
 PTR_CONFIG_PAGE_SCSI_DEVICE_1 ptr;

 ptr = &mpt->mpt_dev_page1[tgt];
 if (onoff) {
  ptr->RequestedParameters |= MPI_SCSIDEVPAGE1_RP_WIDE;
 } else {
  ptr->RequestedParameters &= ~MPI_SCSIDEVPAGE1_RP_WIDE;
 }
}
