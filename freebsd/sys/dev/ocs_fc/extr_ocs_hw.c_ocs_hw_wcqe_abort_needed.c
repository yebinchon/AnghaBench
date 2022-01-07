
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;


 int FALSE ;


 scalar_t__ SLI4_FC_WCQE_STATUS_LOCAL_REJECT ;
 int TRUE ;

__attribute__((used)) static uint8_t ocs_hw_wcqe_abort_needed(uint16_t status, uint8_t ext, uint8_t xb)
{

 if (!xb) {
  return FALSE;
 }
 if (status == SLI4_FC_WCQE_STATUS_LOCAL_REJECT) {
  switch (ext) {

  case 128:
  case 129:
   return FALSE;
  default:
   break;
  }
 }
 return TRUE;
}
