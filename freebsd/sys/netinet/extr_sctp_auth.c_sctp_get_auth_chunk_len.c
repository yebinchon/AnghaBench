
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct sctp_auth_chunk {int dummy; } ;


 int SCTP_SIZE32 (int) ;
 int sctp_get_hmac_digest_len (int ) ;

uint32_t
sctp_get_auth_chunk_len(uint16_t hmac_algo)
{
 int size;

 size = sizeof(struct sctp_auth_chunk) + sctp_get_hmac_digest_len(hmac_algo);
 return (SCTP_SIZE32(size));
}
