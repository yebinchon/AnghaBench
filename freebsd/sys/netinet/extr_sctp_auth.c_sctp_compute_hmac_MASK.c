#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {scalar_t__ keylen; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ sctp_key_t ;
typedef  int /*<<< orphan*/  sctp_hash_context_t ;

/* Variables and functions */
 int SCTP_AUTH_DIGEST_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

uint32_t
FUNC7(uint16_t hmac_algo, sctp_key_t *key, uint8_t *text,
    uint32_t textlen, uint8_t *digest)
{
	uint32_t digestlen;
	uint32_t blocklen;
	sctp_hash_context_t ctx;
	uint8_t temp[SCTP_AUTH_DIGEST_LEN_MAX];

	/* sanity check */
	if ((key == NULL) || (text == NULL) || (textlen == 0) ||
	    (digest == NULL)) {
		/* can't do HMAC with empty key or text or digest store */
		return (0);
	}
	/* validate the hmac algo and get the digest length */
	digestlen = FUNC2(hmac_algo);
	if (digestlen == 0)
		return (0);

	/* hash the key if it is longer than the hash block size */
	blocklen = FUNC1(hmac_algo);
	if (key->keylen > blocklen) {
		FUNC5(hmac_algo, &ctx);
		FUNC6(hmac_algo, &ctx, key->key, key->keylen);
		FUNC4(hmac_algo, &ctx, temp);
		/* save the hashed key as the new key */
		key->keylen = digestlen;
		FUNC0(key->key, temp, key->keylen);
	}
	return (FUNC3(hmac_algo, key->key, key->keylen, text, textlen,
	    digest));
}