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
struct aes_cbc_mac_ctx {scalar_t__ blockIndex; int* staging_block; int* block; int /*<<< orphan*/  rounds; int /*<<< orphan*/  keysched; int /*<<< orphan*/  nonceLength; int /*<<< orphan*/  nonce; int /*<<< orphan*/  cryptDataCount; } ;
typedef  int /*<<< orphan*/  s0 ;

/* Variables and functions */
 size_t AES_CBC_MAC_HASH_LEN ; 
 int CCM_CBC_BLOCK_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct aes_cbc_mac_ctx*,int*,int*) ; 

void
FUNC5(uint8_t *buf, struct aes_cbc_mac_ctx *ctx)
{
	uint8_t s0[CCM_CBC_BLOCK_LEN];
	
	/*
	 * We first need to check to see if we've got any data
	 * left over to encrypt.
	 */
	if (ctx->blockIndex != 0) {
		FUNC4(ctx, ctx->staging_block, ctx->block);
		ctx->cryptDataCount += ctx->blockIndex;
		ctx->blockIndex = 0;
		FUNC2(ctx->staging_block, sizeof(ctx->staging_block));
	}
	FUNC1(s0, sizeof(s0));
	s0[0] = (15 - ctx->nonceLength) - 1;
	FUNC0(ctx->nonce, s0 + 1, ctx->nonceLength);
	FUNC3(ctx->keysched, ctx->rounds, s0, s0);
	for (size_t indx = 0; indx < AES_CBC_MAC_HASH_LEN; indx++)
		buf[indx] = ctx->block[indx] ^ s0[indx];
	FUNC2(s0, sizeof(s0));
}