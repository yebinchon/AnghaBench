
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int num_algo; scalar_t__* hmac; } ;
typedef TYPE_1__ sctp_hmaclist_t ;


 int SCTPDBG (int ,char*,scalar_t__) ;
 scalar_t__ SCTP_AUTH_HMAC_ID_RSVD ;
 int SCTP_DEBUG_AUTH1 ;

uint16_t
sctp_negotiate_hmacid(sctp_hmaclist_t *peer, sctp_hmaclist_t *local)
{
 int i, j;

 if ((local == ((void*)0)) || (peer == ((void*)0)))
  return (SCTP_AUTH_HMAC_ID_RSVD);

 for (i = 0; i < peer->num_algo; i++) {
  for (j = 0; j < local->num_algo; j++) {
   if (peer->hmac[i] == local->hmac[j]) {

    SCTPDBG(SCTP_DEBUG_AUTH1,
        "SCTP: negotiated peer HMAC id %u\n",
        peer->hmac[i]);
    return (peer->hmac[i]);
   }
  }
 }

 return (SCTP_AUTH_HMAC_ID_RSVD);
}
