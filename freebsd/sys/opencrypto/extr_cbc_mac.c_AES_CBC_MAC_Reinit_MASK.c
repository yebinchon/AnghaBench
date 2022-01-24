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
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int uint16_t ;
struct aes_cbc_mac_ctx {int cryptDataLength; int const* nonce; int nonceLength; size_t authDataCount; size_t blockIndex; int* staging_block; int authDataLength; int /*<<< orphan*/  block; int /*<<< orphan*/  rounds; int /*<<< orphan*/  keysched; } ;
typedef  int /*<<< orphan*/  sizeVal ;
typedef  int /*<<< orphan*/  b0 ;

/* Variables and functions */
 int AES_CBC_MAC_HASH_LEN ; 
 int CCM_CBC_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int const*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (unsigned long long) ; 
 int FUNC5 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

void
FUNC7(struct aes_cbc_mac_ctx *ctx, const uint8_t *nonce, uint16_t nonceLen)
{
	uint8_t b0[CCM_CBC_BLOCK_LEN];
	uint8_t *bp = b0, flags = 0;
	uint8_t L = 0;
	uint64_t dataLength = ctx->cryptDataLength;

	FUNC0(nonceLen >= 7 && nonceLen <= 13,
	    ("nonceLen must be between 7 and 13 bytes"));

	ctx->nonce = nonce;
	ctx->nonceLength = nonceLen;
	
	ctx->authDataCount = 0;
	ctx->blockIndex = 0;
	FUNC2(ctx->staging_block, sizeof(ctx->staging_block));
	
	/*
	 * Need to determine the L field value.  This is the number of
	 * bytes needed to specify the length of the message; the length
	 * is whatever is left in the 16 bytes after specifying flags and
	 * the nonce.
	 */
	L = 15 - nonceLen;
	
	flags = ((ctx->authDataLength > 0) << 6) +
	    (((AES_CBC_MAC_HASH_LEN - 2) / 2) << 3) +
	    L - 1;
	/*
	 * Now we need to set up the first block, which has flags, nonce,
	 * and the message length.
	 */
	b0[0] = flags;
	FUNC1(nonce, b0 + 1, nonceLen);
	bp = b0 + 1 + nonceLen;

	/* Need to copy L' [aka L-1] bytes of cryptDataLength */
	for (uint8_t *dst = b0 + sizeof(b0) - 1; dst >= bp; dst--) {
		*dst = dataLength;
		dataLength >>= 8;
	}
	/* Now need to encrypt b0 */
	FUNC6(ctx->keysched, ctx->rounds, b0, ctx->block);
	/* If there is auth data, we need to set up the staging block */
	if (ctx->authDataLength) {
		size_t addLength;
		if (ctx->authDataLength < ((1<<16) - (1<<8))) {
			uint16_t sizeVal = FUNC3(ctx->authDataLength);
			FUNC1(&sizeVal, ctx->staging_block, sizeof(sizeVal));
			addLength = sizeof(sizeVal);
		} else if (ctx->authDataLength < (1ULL<<32)) {
			uint32_t sizeVal = FUNC4(ctx->authDataLength);
			ctx->staging_block[0] = 0xff;
			ctx->staging_block[1] = 0xfe;
			FUNC1(&sizeVal, ctx->staging_block+2, sizeof(sizeVal));
			addLength = 2 + sizeof(sizeVal);
		} else {
			uint64_t sizeVal = FUNC5(ctx->authDataLength);
			ctx->staging_block[0] = 0xff;
			ctx->staging_block[1] = 0xff;
			FUNC1(&sizeVal, ctx->staging_block+2, sizeof(sizeVal));
			addLength = 2 + sizeof(sizeVal);
		}
		ctx->blockIndex = addLength;
		/*
		 * The length descriptor goes into the AAD buffer, so we
		 * need to account for it.
		 */
		ctx->authDataLength += addLength;
		ctx->authDataCount = addLength;
	}
}