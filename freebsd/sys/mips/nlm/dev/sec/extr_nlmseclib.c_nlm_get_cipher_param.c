
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlp_sec_command {void* ivlen; void* ciphermode; int cipheralg; TYPE_1__* enccrd; } ;
struct TYPE_2__ {int crd_alg; } ;






 int NLM_CIPHER_3DES ;
 int NLM_CIPHER_AES128 ;
 int NLM_CIPHER_ARC4 ;
 int NLM_CIPHER_DES ;
 void* NLM_CIPHER_MODE_CBC ;
 void* NLM_CIPHER_MODE_ECB ;
 void* XLP_SEC_AES_IV_LENGTH ;
 void* XLP_SEC_ARC4_IV_LENGTH ;
 void* XLP_SEC_DES_IV_LENGTH ;

int
nlm_get_cipher_param(struct xlp_sec_command *cmd)
{
 switch(cmd->enccrd->crd_alg) {
 case 128:
  cmd->cipheralg = NLM_CIPHER_DES;
  cmd->ciphermode = NLM_CIPHER_MODE_CBC;
  cmd->ivlen = XLP_SEC_DES_IV_LENGTH;
  break;
 case 131:
  cmd->cipheralg = NLM_CIPHER_3DES;
  cmd->ciphermode = NLM_CIPHER_MODE_CBC;
  cmd->ivlen = XLP_SEC_DES_IV_LENGTH;
  break;
 case 130:
  cmd->cipheralg = NLM_CIPHER_AES128;
  cmd->ciphermode = NLM_CIPHER_MODE_CBC;
  cmd->ivlen = XLP_SEC_AES_IV_LENGTH;
  break;
 case 129:
  cmd->cipheralg = NLM_CIPHER_ARC4;
  cmd->ciphermode = NLM_CIPHER_MODE_ECB;
  cmd->ivlen = XLP_SEC_ARC4_IV_LENGTH;
  break;
 default:

  return (-1);
 }
 return (0);
}
