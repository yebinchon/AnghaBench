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
typedef  int /*<<< orphan*/  uint8_t ;
struct hmac_ctx {int /*<<< orphan*/  outerctx; int /*<<< orphan*/  innerctx; } ;
typedef  struct hmac_ctx u_char ;
typedef  int /*<<< orphan*/  digest ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hmac_ctx*,int /*<<< orphan*/ *) ; 
 int SHA512_MDLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct hmac_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hmac_ctx*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct hmac_ctx*,int) ; 

void
FUNC4(struct hmac_ctx *ctx, uint8_t *md, size_t mdsize)
{
	u_char digest[SHA512_MDLEN];

	/* Complete inner hash */
	FUNC0(digest, &ctx->innerctx);

	/* Complete outer hash */
	FUNC1(&ctx->outerctx, digest, sizeof(digest));
	FUNC0(digest, &ctx->outerctx);

	FUNC3(ctx, sizeof(*ctx));
	/* mdsize == 0 means "Give me the whole hash!" */
	if (mdsize == 0)
		mdsize = SHA512_MDLEN;
	FUNC2(digest, md, mdsize);
	FUNC3(digest, sizeof(digest));
}