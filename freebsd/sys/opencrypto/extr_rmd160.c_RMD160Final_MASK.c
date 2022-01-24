#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int32_t ;
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_5__ {int count; int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ RMD160_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * PADDING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void
FUNC4(u_char digest[20], RMD160_CTX *ctx)
{
	int i;
	u_char size[8];
	u_int32_t padlen;

	FUNC1(size, ctx->count);

	/*
	 * pad to 64 byte blocks, at least one byte from PADDING plus 8 bytes
	 * for the size
	 */
	padlen = 64 - ((ctx->count/8) % 64);
	if (padlen < 1 + 8)
		padlen += 64;
	FUNC2(ctx, PADDING, padlen - 8);		/* padlen - 8 <= 64 */
	FUNC2(ctx, size, 8);

	if (digest != NULL)
		for (i = 0; i < 5; i++)
			FUNC0(digest + i*4, ctx->state[i]);

	FUNC3(ctx, 0, sizeof (*ctx));
}