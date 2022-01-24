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
typedef  int /*<<< orphan*/  u_int8_t ;
struct aes_xts_ctx {int /*<<< orphan*/  key2; int /*<<< orphan*/  key1; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  M_CRYPTO_DATA ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int
FUNC2(u_int8_t **sched, const u_int8_t *key, int len)
{
	struct aes_xts_ctx *ctx;

	if (len != 32 && len != 64)
		return EINVAL;

	*sched = FUNC0(sizeof(struct aes_xts_ctx), M_CRYPTO_DATA,
	    M_NOWAIT | M_ZERO);
	if (*sched == NULL)
		return ENOMEM;
	ctx = (struct aes_xts_ctx *)*sched;

	FUNC1(&ctx->key1, key, len * 4);
	FUNC1(&ctx->key2, key + (len / 2), len * 4);

	return 0;
}