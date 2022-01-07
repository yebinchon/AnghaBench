
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xlp_sec_command {void* hashmode; void* hashalg; TYPE_1__* maccrd; } ;
struct TYPE_2__ {int crd_alg; } ;






 void* NLM_HASH_MD5 ;
 void* NLM_HASH_MODE_SHA1 ;
 void* NLM_HASH_SHA ;

int
nlm_get_digest_param(struct xlp_sec_command *cmd)
{
 switch(cmd->maccrd->crd_alg) {
 case 131:
  cmd->hashalg = NLM_HASH_MD5;
  cmd->hashmode = NLM_HASH_MODE_SHA1;
  break;
 case 129:
  cmd->hashalg = NLM_HASH_SHA;
  cmd->hashmode = NLM_HASH_MODE_SHA1;
  break;
 case 130:
  cmd->hashalg = NLM_HASH_MD5;
  cmd->hashmode = NLM_HASH_MODE_SHA1;
  break;
 case 128:
  cmd->hashalg = NLM_HASH_SHA;
  cmd->hashmode = NLM_HASH_MODE_SHA1;
  break;
 default:

  return (-1);
 }
 return (0);
}
