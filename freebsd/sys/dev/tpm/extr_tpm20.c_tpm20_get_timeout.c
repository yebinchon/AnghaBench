
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int int32_t ;
 int TPM_TIMEOUT_B ;
 int TPM_TIMEOUT_C ;
 int TPM_TIMEOUT_LONG ;

int32_t
tpm20_get_timeout(uint32_t command)
{
 int32_t timeout;

 switch (command) {
  case 135:
  case 137:
  case 136:
   timeout = TPM_TIMEOUT_LONG;
   break;
  case 130:
  case 128:
  case 129:
  case 133:
  case 131:
  case 134:
  case 132:
   timeout = TPM_TIMEOUT_C;
   break;
  default:
   timeout = TPM_TIMEOUT_B;
   break;
 }
 return timeout;
}
