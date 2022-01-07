
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {int num_algo; int max_algo; scalar_t__* hmac; } ;
typedef TYPE_1__ sctp_hmaclist_t ;


 int SCTPDBG (int ,char*,scalar_t__) ;
 scalar_t__ SCTP_AUTH_HMAC_ID_SHA1 ;
 scalar_t__ SCTP_AUTH_HMAC_ID_SHA256 ;
 int SCTP_DEBUG_AUTH1 ;

int
sctp_auth_add_hmacid(sctp_hmaclist_t *list, uint16_t hmac_id)
{
 int i;

 if (list == ((void*)0))
  return (-1);
 if (list->num_algo == list->max_algo) {
  SCTPDBG(SCTP_DEBUG_AUTH1,
      "SCTP: HMAC id list full, ignoring add %u\n", hmac_id);
  return (-1);
 }
 if ((hmac_id != SCTP_AUTH_HMAC_ID_SHA1) &&
     (hmac_id != SCTP_AUTH_HMAC_ID_SHA256)) {
  return (-1);
 }

 for (i = 0; i < list->num_algo; i++) {
  if (list->hmac[i] == hmac_id) {

   return (-1);
  }
 }
 SCTPDBG(SCTP_DEBUG_AUTH1, "SCTP: add HMAC id %u to list\n", hmac_id);
 list->hmac[list->num_algo++] = hmac_id;
 return (0);
}
