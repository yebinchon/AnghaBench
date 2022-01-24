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
typedef  int u_int8_t ;
typedef  int u_int ;
struct aes_xts_ctx {int* tweak; int /*<<< orphan*/  key1; } ;
typedef  int /*<<< orphan*/  block ;

/* Variables and functions */
 int AES_XTS_ALPHA ; 
 int AES_XTS_BLOCKSIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int*) ; 

__attribute__((used)) static void
FUNC3(struct aes_xts_ctx *ctx, u_int8_t *data, u_int do_encrypt)
{
	u_int8_t block[AES_XTS_BLOCKSIZE];
	u_int i, carry_in, carry_out;

	for (i = 0; i < AES_XTS_BLOCKSIZE; i++)
		block[i] = data[i] ^ ctx->tweak[i];

	if (do_encrypt)
		FUNC2(&ctx->key1, block, data);
	else
		FUNC1(&ctx->key1, block, data);

	for (i = 0; i < AES_XTS_BLOCKSIZE; i++)
		data[i] ^= ctx->tweak[i];

	/* Exponentiate tweak */
	carry_in = 0;
	for (i = 0; i < AES_XTS_BLOCKSIZE; i++) {
		carry_out = ctx->tweak[i] & 0x80;
		ctx->tweak[i] = (ctx->tweak[i] << 1) | (carry_in ? 1 : 0);
		carry_in = carry_out;
	}
	if (carry_in)
		ctx->tweak[0] ^= AES_XTS_ALPHA;
	FUNC0(block, sizeof(block));
}