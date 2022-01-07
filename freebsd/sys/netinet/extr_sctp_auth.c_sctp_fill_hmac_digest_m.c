
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ assoc_keyid; int * assoc_key; int peer_random; int random; } ;
struct TYPE_6__ {TYPE_1__ authinfo; int peer_hmac_id; int shared_keys; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_auth_chunk {int hmac; int shared_key_id; } ;
struct mbuf {int dummy; } ;
struct TYPE_7__ {int * key; } ;
typedef TYPE_3__ sctp_sharedkey_t ;
typedef int sctp_key_t ;


 int SCTPDBG (int ,char*,scalar_t__) ;
 scalar_t__ SCTP_AUTH_DEBUG ;
 int SCTP_DEBUG_AUTH1 ;
 int SCTP_SIZE32 (int ) ;
 int htons (scalar_t__) ;
 int memset (int ,int ,int ) ;
 int * sctp_compute_hashkey (int ,int ,int *) ;
 int sctp_compute_hmac_m (int ,int *,struct mbuf*,int ,int ) ;
 TYPE_3__* sctp_find_sharedkey (int *,scalar_t__) ;
 int sctp_free_key (int *) ;
 int sctp_get_hmac_digest_len (int ) ;
 int sctp_print_key (int *,char*) ;

void
sctp_fill_hmac_digest_m(struct mbuf *m, uint32_t auth_offset,
    struct sctp_auth_chunk *auth, struct sctp_tcb *stcb, uint16_t keyid)
{
 uint32_t digestlen;
 sctp_sharedkey_t *skey;
 sctp_key_t *key;

 if ((stcb == ((void*)0)) || (auth == ((void*)0)))
  return;


 digestlen = sctp_get_hmac_digest_len(stcb->asoc.peer_hmac_id);
 memset(auth->hmac, 0, SCTP_SIZE32(digestlen));


 if ((keyid != stcb->asoc.authinfo.assoc_keyid) ||
     (stcb->asoc.authinfo.assoc_key == ((void*)0))) {
  if (stcb->asoc.authinfo.assoc_key != ((void*)0)) {

   sctp_free_key(stcb->asoc.authinfo.assoc_key);
  }
  skey = sctp_find_sharedkey(&stcb->asoc.shared_keys, keyid);

  if (skey != ((void*)0))
   key = skey->key;
  else
   key = ((void*)0);

  stcb->asoc.authinfo.assoc_key =
      sctp_compute_hashkey(stcb->asoc.authinfo.random,
      stcb->asoc.authinfo.peer_random, key);
  stcb->asoc.authinfo.assoc_keyid = keyid;
  SCTPDBG(SCTP_DEBUG_AUTH1, "caching key id %u\n",
      stcb->asoc.authinfo.assoc_keyid);





 }


 auth->shared_key_id = htons(keyid);


 (void)sctp_compute_hmac_m(stcb->asoc.peer_hmac_id, stcb->asoc.authinfo.assoc_key,
     m, auth_offset, auth->hmac);
}
