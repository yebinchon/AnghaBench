#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ assoc_keyid; int /*<<< orphan*/ * assoc_key; int /*<<< orphan*/  peer_random; int /*<<< orphan*/  random; } ;
struct TYPE_6__ {TYPE_1__ authinfo; int /*<<< orphan*/  peer_hmac_id; int /*<<< orphan*/  shared_keys; } ;
struct sctp_tcb {TYPE_2__ asoc; } ;
struct sctp_auth_chunk {int /*<<< orphan*/  hmac; int /*<<< orphan*/  shared_key_id; } ;
struct mbuf {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/ * key; } ;
typedef  TYPE_3__ sctp_sharedkey_t ;
typedef  int /*<<< orphan*/  sctp_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ SCTP_AUTH_DEBUG ; 
 int /*<<< orphan*/  SCTP_DEBUG_AUTH1 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 

void
FUNC10(struct mbuf *m, uint32_t auth_offset,
    struct sctp_auth_chunk *auth, struct sctp_tcb *stcb, uint16_t keyid)
{
	uint32_t digestlen;
	sctp_sharedkey_t *skey;
	sctp_key_t *key;

	if ((stcb == NULL) || (auth == NULL))
		return;

	/* zero the digest + chunk padding */
	digestlen = FUNC8(stcb->asoc.peer_hmac_id);
	FUNC3(auth->hmac, 0, FUNC1(digestlen));

	/* is the desired key cached? */
	if ((keyid != stcb->asoc.authinfo.assoc_keyid) ||
	    (stcb->asoc.authinfo.assoc_key == NULL)) {
		if (stcb->asoc.authinfo.assoc_key != NULL) {
			/* free the old cached key */
			FUNC7(stcb->asoc.authinfo.assoc_key);
		}
		skey = FUNC6(&stcb->asoc.shared_keys, keyid);
		/* the only way skey is NULL is if null key id 0 is used */
		if (skey != NULL)
			key = skey->key;
		else
			key = NULL;
		/* compute a new assoc key and cache it */
		stcb->asoc.authinfo.assoc_key =
		    FUNC4(stcb->asoc.authinfo.random,
		    stcb->asoc.authinfo.peer_random, key);
		stcb->asoc.authinfo.assoc_keyid = keyid;
		FUNC0(SCTP_DEBUG_AUTH1, "caching key id %u\n",
		    stcb->asoc.authinfo.assoc_keyid);
#ifdef SCTP_DEBUG
		if (SCTP_AUTH_DEBUG)
			sctp_print_key(stcb->asoc.authinfo.assoc_key,
			    "Assoc Key");
#endif
	}

	/* set in the active key id */
	auth->shared_key_id = FUNC2(keyid);

	/* compute and fill in the digest */
	(void)FUNC5(stcb->asoc.peer_hmac_id, stcb->asoc.authinfo.assoc_key,
	    m, auth_offset, auth->hmac);
}