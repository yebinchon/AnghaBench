
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* uint16_t ;
struct TYPE_4__ {void* deviceCap; void* blueToothOptions; void* rfSilent; void** regDmn; void* version; void* checksum; void* length; } ;
struct ar5416eeprom {TYPE_3__* modalHeader; TYPE_1__ baseEepHeader; } ;
struct TYPE_6__ {int antCtrlCommon; int* antCtrlChain; TYPE_2__* spurChans; void** xpaBiasLvlFreq; } ;
struct TYPE_5__ {void* spurChan; } ;
typedef TYPE_3__ MODAL_EEP_HEADER ;


 int AR5416_EEPROM_MODAL_SPURS ;
 int AR5416_MAX_CHAINS ;
 void* __bswap16 (void*) ;
 int __bswap32 (int) ;

__attribute__((used)) static void
eepromSwap(struct ar5416eeprom *ee)
{
 uint32_t integer, i, j;
 uint16_t word;
 MODAL_EEP_HEADER *pModal;


 word = __bswap16(ee->baseEepHeader.length);
 ee->baseEepHeader.length = word;

 word = __bswap16(ee->baseEepHeader.checksum);
 ee->baseEepHeader.checksum = word;

 word = __bswap16(ee->baseEepHeader.version);
 ee->baseEepHeader.version = word;

 word = __bswap16(ee->baseEepHeader.regDmn[0]);
 ee->baseEepHeader.regDmn[0] = word;

 word = __bswap16(ee->baseEepHeader.regDmn[1]);
 ee->baseEepHeader.regDmn[1] = word;

 word = __bswap16(ee->baseEepHeader.rfSilent);
 ee->baseEepHeader.rfSilent = word;

 word = __bswap16(ee->baseEepHeader.blueToothOptions);
 ee->baseEepHeader.blueToothOptions = word;

 word = __bswap16(ee->baseEepHeader.deviceCap);
 ee->baseEepHeader.deviceCap = word;


 for (j = 0; j < 2; j++) {
  pModal = &ee->modalHeader[j];


  integer = __bswap32(pModal->antCtrlCommon);
  pModal->antCtrlCommon = integer;

  for (i = 0; i < AR5416_MAX_CHAINS; i++) {
   integer = __bswap32(pModal->antCtrlChain[i]);
   pModal->antCtrlChain[i] = integer;
  }
  for (i = 0; i < 3; i++) {
   word = __bswap16(pModal->xpaBiasLvlFreq[i]);
   pModal->xpaBiasLvlFreq[i] = word;
  }
  for (i = 0; i < AR5416_EEPROM_MODAL_SPURS; i++) {
   word = __bswap16(pModal->spurChans[i].spurChan);
   pModal->spurChans[i].spurChan = word;
  }
 }
}
