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
typedef  int u_int ;
typedef  int u_char ;
struct hmac_ctx {int /*<<< orphan*/  outerctx; int /*<<< orphan*/  innerctx; } ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  k_opad ;
typedef  int /*<<< orphan*/  k_ipad ;
typedef  int /*<<< orphan*/  SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*,int) ; 
 int /*<<< orphan*/  FUNC5 (int*,int) ; 

void
FUNC6(struct hmac_ctx *ctx, const char *hkey,
    size_t hkeylen)
{
	u_char k_ipad[128], k_opad[128], key[128];
	SHA512_CTX lctx;
	u_int i;

	FUNC4(key, sizeof(key));
	if (hkeylen == 0)
		; /* do nothing */
	else if (hkeylen <= 128)
		FUNC3(hkey, key, hkeylen);
	else {
		/* If key is longer than 128 bytes reset it to key = SHA512(key). */
		FUNC1(&lctx);
		FUNC2(&lctx, hkey, hkeylen);
		FUNC0(key, &lctx);
	}

	/* XOR key with ipad and opad values. */
	for (i = 0; i < sizeof(key); i++) {
		k_ipad[i] = key[i] ^ 0x36;
		k_opad[i] = key[i] ^ 0x5c;
	}
	FUNC5(key, sizeof(key));
	/* Start inner SHA512. */
	FUNC1(&ctx->innerctx);
	FUNC2(&ctx->innerctx, k_ipad, sizeof(k_ipad));
	FUNC5(k_ipad, sizeof(k_ipad));
	/* Start outer SHA512. */
	FUNC1(&ctx->outerctx);
	FUNC2(&ctx->outerctx, k_opad, sizeof(k_opad));
	FUNC5(k_opad, sizeof(k_opad));
}