#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_8__ {int /*<<< orphan*/  active_keyid; int /*<<< orphan*/  recv_keyid; int /*<<< orphan*/  assoc_keyid; scalar_t__ random_len; TYPE_5__* random; } ;
struct TYPE_11__ {int /*<<< orphan*/  shared_keys; TYPE_1__ authinfo; int /*<<< orphan*/ * local_hmacs; int /*<<< orphan*/  peer_hmacs; int /*<<< orphan*/  peer_hmac_id; int /*<<< orphan*/ * local_auth_chunks; } ;
struct sctp_tcb {TYPE_4__ asoc; TYPE_3__* sctp_ep; } ;
struct sctp_paramhdr {int /*<<< orphan*/  param_length; int /*<<< orphan*/  param_type; } ;
struct sctp_auth_random {int /*<<< orphan*/ * chunk_types; int /*<<< orphan*/ * hmac_ids; } ;
struct sctp_auth_hmac_algo {int /*<<< orphan*/ * chunk_types; int /*<<< orphan*/ * hmac_ids; } ;
struct sctp_auth_chunk_list {int /*<<< orphan*/ * chunk_types; int /*<<< orphan*/ * hmac_ids; } ;
struct mbuf {int dummy; } ;
struct TYPE_12__ {scalar_t__ key; } ;
typedef  TYPE_5__ sctp_key_t ;
typedef  int /*<<< orphan*/  random_store ;
typedef  int /*<<< orphan*/  hmacs_store ;
typedef  int /*<<< orphan*/  chunks_store ;
struct TYPE_9__ {int /*<<< orphan*/  shared_keys; int /*<<< orphan*/  default_keyid; } ;
struct TYPE_10__ {TYPE_2__ sctp_ep; } ;

/* Variables and functions */
 scalar_t__ SCTP_CHUNK_LIST ; 
 scalar_t__ SCTP_HMAC_LIST ; 
 int SCTP_PARAM_BUFFER_SIZE ; 
 scalar_t__ SCTP_RANDOM ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct sctp_auth_random*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 TYPE_5__* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sctp_tcb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_5__*) ; 
 struct sctp_paramhdr* FUNC13 (struct mbuf*,scalar_t__,struct sctp_paramhdr*,scalar_t__) ; 
 scalar_t__ FUNC14 (struct mbuf*,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC16(struct sctp_tcb *stcb, struct mbuf *m,
    uint32_t offset, uint32_t length)
{
	struct sctp_paramhdr *phdr, tmp_param;
	uint16_t plen, ptype;
	uint8_t random_store[SCTP_PARAM_BUFFER_SIZE];
	struct sctp_auth_random *p_random = NULL;
	uint16_t random_len = 0;
	uint8_t hmacs_store[SCTP_PARAM_BUFFER_SIZE];
	struct sctp_auth_hmac_algo *hmacs = NULL;
	uint16_t hmacs_len = 0;
	uint8_t chunks_store[SCTP_PARAM_BUFFER_SIZE];
	struct sctp_auth_chunk_list *chunks = NULL;
	uint16_t num_chunks = 0;
	sctp_key_t *new_key;
	uint32_t keylen;

	/* convert to upper bound */
	length += offset;

	phdr = (struct sctp_paramhdr *)FUNC14(m, offset,
	    sizeof(struct sctp_paramhdr), (uint8_t *)&tmp_param);
	while (phdr != NULL) {
		ptype = FUNC2(phdr->param_type);
		plen = FUNC2(phdr->param_length);

		if ((plen == 0) || (offset + plen > length))
			break;

		if (ptype == SCTP_RANDOM) {
			if (plen > sizeof(random_store))
				break;
			phdr = FUNC13(m, offset,
			    (struct sctp_paramhdr *)random_store, plen);
			if (phdr == NULL)
				return;
			/* save the random and length for the key */
			p_random = (struct sctp_auth_random *)phdr;
			random_len = plen - sizeof(*p_random);
		} else if (ptype == SCTP_HMAC_LIST) {
			uint16_t num_hmacs;
			uint16_t i;

			if (plen > sizeof(hmacs_store))
				break;
			phdr = FUNC13(m, offset,
			    (struct sctp_paramhdr *)hmacs_store, plen);
			if (phdr == NULL)
				return;
			/* save the hmacs list and num for the key */
			hmacs = (struct sctp_auth_hmac_algo *)phdr;
			hmacs_len = plen - sizeof(*hmacs);
			num_hmacs = hmacs_len / sizeof(hmacs->hmac_ids[0]);
			if (stcb->asoc.local_hmacs != NULL)
				FUNC11(stcb->asoc.local_hmacs);
			stcb->asoc.local_hmacs = FUNC4(num_hmacs);
			if (stcb->asoc.local_hmacs != NULL) {
				for (i = 0; i < num_hmacs; i++) {
					(void)FUNC7(stcb->asoc.local_hmacs,
					    FUNC2(hmacs->hmac_ids[i]));
				}
			}
		} else if (ptype == SCTP_CHUNK_LIST) {
			int i;

			if (plen > sizeof(chunks_store))
				break;
			phdr = FUNC13(m, offset,
			    (struct sctp_paramhdr *)chunks_store, plen);
			if (phdr == NULL)
				return;
			chunks = (struct sctp_auth_chunk_list *)phdr;
			num_chunks = plen - sizeof(*chunks);
			/* save chunks list and num for the key */
			if (stcb->asoc.local_auth_chunks != NULL)
				FUNC9(stcb->asoc.local_auth_chunks);
			else
				stcb->asoc.local_auth_chunks = FUNC3();
			for (i = 0; i < num_chunks; i++) {
				(void)FUNC6(chunks->chunk_types[i],
				    stcb->asoc.local_auth_chunks);
			}
		}
		/* get next parameter */
		offset += FUNC0(plen);
		if (offset + sizeof(struct sctp_paramhdr) > length)
			break;
		phdr = (struct sctp_paramhdr *)FUNC14(m, offset, sizeof(struct sctp_paramhdr),
		    (uint8_t *)&tmp_param);
	}
	/* concatenate the full random key */
	keylen = sizeof(*p_random) + random_len + sizeof(*hmacs) + hmacs_len;
	if (chunks != NULL) {
		keylen += sizeof(*chunks) + num_chunks;
	}
	new_key = FUNC5(keylen);
	if (new_key != NULL) {
		/* copy in the RANDOM */
		if (p_random != NULL) {
			keylen = sizeof(*p_random) + random_len;
			FUNC1(new_key->key, p_random, keylen);
		} else {
			keylen = 0;
		}
		/* append in the AUTH chunks */
		if (chunks != NULL) {
			FUNC1(new_key->key + keylen, chunks,
			    sizeof(*chunks) + num_chunks);
			keylen += sizeof(*chunks) + num_chunks;
		}
		/* append in the HMACs */
		if (hmacs != NULL) {
			FUNC1(new_key->key + keylen, hmacs,
			    sizeof(*hmacs) + hmacs_len);
		}
	}
	if (stcb->asoc.authinfo.random != NULL)
		FUNC12(stcb->asoc.authinfo.random);
	stcb->asoc.authinfo.random = new_key;
	stcb->asoc.authinfo.random_len = random_len;
	FUNC8(stcb, stcb->asoc.authinfo.assoc_keyid);
	FUNC8(stcb, stcb->asoc.authinfo.recv_keyid);

	/* negotiate what HMAC to use for the peer */
	stcb->asoc.peer_hmac_id = FUNC15(stcb->asoc.peer_hmacs,
	    stcb->asoc.local_hmacs);

	/* copy defaults from the endpoint */
	/* FIX ME: put in cookie? */
	stcb->asoc.authinfo.active_keyid = stcb->sctp_ep->sctp_ep.default_keyid;
	/* copy out the shared key list (by reference) from the endpoint */
	(void)FUNC10(&stcb->sctp_ep->sctp_ep.shared_keys,
	    &stcb->asoc.shared_keys);
}