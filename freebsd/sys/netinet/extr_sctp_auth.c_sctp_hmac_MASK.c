#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  sctp_hash_context_t ;

/* Variables and functions */
 int SCTP_AUTH_DIGEST_LEN_MAX ; 
 int /*<<< orphan*/  FUNC0 (int*,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,scalar_t__) ; 

uint32_t
FUNC7(uint16_t hmac_algo, uint8_t *key, uint32_t keylen,
    uint8_t *text, uint32_t textlen, uint8_t *digest)
{
	uint32_t digestlen;
	uint32_t blocklen;
	sctp_hash_context_t ctx;
	uint8_t ipad[128], opad[128];	/* keyed hash inner/outer pads */
	uint8_t temp[SCTP_AUTH_DIGEST_LEN_MAX];
	uint32_t i;

	/* sanity check the material and length */
	if ((key == NULL) || (keylen == 0) || (text == NULL) ||
	    (textlen == 0) || (digest == NULL)) {
		/* can't do HMAC with empty key or text or digest store */
		return (0);
	}
	/* validate the hmac algo and get the digest length */
	digestlen = FUNC3(hmac_algo);
	if (digestlen == 0)
		return (0);

	/* hash the key if it is longer than the hash block size */
	blocklen = FUNC2(hmac_algo);
	if (keylen > blocklen) {
		FUNC5(hmac_algo, &ctx);
		FUNC6(hmac_algo, &ctx, key, keylen);
		FUNC4(hmac_algo, &ctx, temp);
		/* set the hashed key as the key */
		keylen = digestlen;
		key = temp;
	}
	/* initialize the inner/outer pads with the key and "append" zeroes */
	FUNC1(ipad, 0, blocklen);
	FUNC1(opad, 0, blocklen);
	FUNC0(ipad, key, keylen);
	FUNC0(opad, key, keylen);

	/* XOR the key with ipad and opad values */
	for (i = 0; i < blocklen; i++) {
		ipad[i] ^= 0x36;
		opad[i] ^= 0x5c;
	}

	/* perform inner hash */
	FUNC5(hmac_algo, &ctx);
	FUNC6(hmac_algo, &ctx, ipad, blocklen);
	FUNC6(hmac_algo, &ctx, text, textlen);
	FUNC4(hmac_algo, &ctx, temp);

	/* perform outer hash */
	FUNC5(hmac_algo, &ctx);
	FUNC6(hmac_algo, &ctx, opad, blocklen);
	FUNC6(hmac_algo, &ctx, temp, digestlen);
	FUNC4(hmac_algo, &ctx, digest);

	return (digestlen);
}