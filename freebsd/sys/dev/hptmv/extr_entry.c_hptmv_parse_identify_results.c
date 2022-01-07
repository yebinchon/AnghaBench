
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* identifyDevice; int lba48Address; } ;
typedef int MV_U16 ;
typedef TYPE_1__ MV_SATA_CHANNEL ;


 size_t IDEN_CAPACITY_1_OFFSET ;
 size_t IDEN_PIO_MODE_SPPORTED ;
 size_t IDEN_SUPPORTED_COMMANDS2 ;
 size_t IDEN_VALID ;
 int KdPrint (char*) ;
 int MV_FALSE ;
 int MV_TRUE ;

__attribute__((used)) static int
hptmv_parse_identify_results(MV_SATA_CHANNEL *pMvSataChannel)
{
 MV_U16 *iden = pMvSataChannel->identifyDevice;


 if (! (iden[IDEN_CAPACITY_1_OFFSET] & 0x200))
 {
  KdPrint(("IAL Error in IDENTIFY info: LBA not supported\n"));
  return -1;
 }
 else
 {
  KdPrint(("%25s - %s\n", "Capabilities", "LBA supported"));
 }

 if (! (iden[IDEN_CAPACITY_1_OFFSET] & 0x100))
 {
  KdPrint(("IAL Error in IDENTIFY info: DMA not supported\n"));
  return -1;
 }
 else
 {
  KdPrint(("%25s - %s\n", "Capabilities", "DMA supported"));
 }

 if ((iden[IDEN_VALID] & 2) == 0)
 {
  KdPrint(("IAL Error in IDENTIFY info: not able to find PIO mode\n"));
  return -1;
 }
 KdPrint(("%25s - 0x%02x\n", "PIO modes supported",
     iden[IDEN_PIO_MODE_SPPORTED] & 0xff));


 if ((iden[IDEN_VALID] & 4) == 0)
 {
  KdPrint(("IAL Error in IDENTIFY info: not able to find UDMA mode\n"));
  return -1;
 }


 if ((iden[IDEN_SUPPORTED_COMMANDS2] & 0x400))
 {
  KdPrint(("%25s - %s\n", "LBA48 addressing", "supported"));
  pMvSataChannel->lba48Address = MV_TRUE;
 }
 else
 {
  KdPrint(("%25s - %s\n", "LBA48 addressing", "Not supported"));
  pMvSataChannel->lba48Address = MV_FALSE;
 }
 return 0;
}
