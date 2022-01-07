
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;


 int SCTP_AUTH_DIGEST_LEN_SHA1 ;
 int SCTP_AUTH_DIGEST_LEN_SHA256 ;



uint32_t
sctp_get_hmac_digest_len(uint16_t hmac_algo)
{
 switch (hmac_algo) {
 case 129:
  return (SCTP_AUTH_DIGEST_LEN_SHA1);
 case 128:
  return (SCTP_AUTH_DIGEST_LEN_SHA256);
 default:

  return (0);
 }
}
