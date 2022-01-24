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
typedef  int /*<<< orphan*/  u_char ;
struct g_eli_softc {int /*<<< orphan*/  sc_akeyctx; } ;
typedef  int /*<<< orphan*/  offset ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  ctx ;
typedef  int /*<<< orphan*/  SHA256_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC3(struct g_eli_softc *sc, off_t offset, u_char *key)
{
	SHA256_CTX ctx;

	/* Copy precalculated SHA256 context. */
	FUNC2(&sc->sc_akeyctx, &ctx, sizeof(ctx));
	FUNC1(&ctx, (uint8_t *)&offset, sizeof(offset));
	FUNC0(key, &ctx);
}