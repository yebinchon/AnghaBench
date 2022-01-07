
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct cryptodesc {int crd_alg; } ;
 int EINVAL ;
 int MD5_HASH_LEN ;
 int SEC_EU_MDEU_A ;
 int SEC_EU_MDEU_B ;
 int SEC_EU_NONE ;
 int SEC_HMAC_HASH_LEN ;
 int SEC_MDEU_MODE_HMAC ;
 int SEC_MDEU_MODE_INIT ;
 int SEC_MDEU_MODE_MD5 ;
 int SEC_MDEU_MODE_PD ;
 int SEC_MDEU_MODE_SHA1 ;
 int SEC_MDEU_MODE_SHA256 ;
 int SEC_MDEU_MODE_SHA384 ;
 int SEC_MDEU_MODE_SHA512 ;
 int SHA1_HASH_LEN ;

__attribute__((used)) static int
sec_mdeu_config(struct cryptodesc *crd, u_int *eu, u_int *mode, u_int *hashlen)
{

 *mode = SEC_MDEU_MODE_PD | SEC_MDEU_MODE_INIT;
 *eu = SEC_EU_NONE;

 switch (crd->crd_alg) {
 case 133:
  *mode |= SEC_MDEU_MODE_HMAC;

 case 134:
  *eu = SEC_EU_MDEU_A;
  *mode |= SEC_MDEU_MODE_MD5;
  *hashlen = MD5_HASH_LEN;
  break;
 case 131:
  *mode |= SEC_MDEU_MODE_HMAC;

 case 132:
  *eu = SEC_EU_MDEU_A;
  *mode |= SEC_MDEU_MODE_SHA1;
  *hashlen = SHA1_HASH_LEN;
  break;
 case 130:
  *mode |= SEC_MDEU_MODE_HMAC | SEC_MDEU_MODE_SHA256;
  *eu = SEC_EU_MDEU_A;
  break;
 case 129:
  *mode |= SEC_MDEU_MODE_HMAC | SEC_MDEU_MODE_SHA384;
  *eu = SEC_EU_MDEU_B;
  break;
 case 128:
  *mode |= SEC_MDEU_MODE_HMAC | SEC_MDEU_MODE_SHA512;
  *eu = SEC_EU_MDEU_B;
  break;
 default:
  return (EINVAL);
 }

 if (*mode & SEC_MDEU_MODE_HMAC)
  *hashlen = SEC_HMAC_HASH_LEN;

 return (0);
}
