
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct sctp_auth_hmac_algo {int * hmac_ids; } ;


 scalar_t__ SCTP_AUTH_HMAC_ID_SHA1 ;
 scalar_t__ ntohs (int ) ;

int
sctp_verify_hmac_param(struct sctp_auth_hmac_algo *hmacs, uint32_t num_hmacs)
{
 uint32_t i;

 for (i = 0; i < num_hmacs; i++) {
  if (ntohs(hmacs->hmac_ids[i]) == SCTP_AUTH_HMAC_ID_SHA1) {
   return (0);
  }
 }
 return (-1);
}
