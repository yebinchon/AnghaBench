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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ u_char ;
struct g_eli_softc {int sc_flags; int sc_ealgo; scalar_t__ sc_ivctx; } ;
typedef  scalar_t__ off_t ;
typedef  int /*<<< orphan*/  off ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  ctx ;
typedef  scalar_t__ SHA256_CTX ;

/* Variables and functions */
#define  CRYPTO_AES_XTS 128 
 int G_ELI_FLAG_NATIVE_BYTE_ORDER ; 
 int FUNC0 (int,size_t) ; 
 int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,int /*<<< orphan*/ ) ; 

void
FUNC6(struct g_eli_softc *sc, off_t offset, u_char *iv,
    size_t size)
{
	uint8_t off[8];

	if ((sc->sc_flags & G_ELI_FLAG_NATIVE_BYTE_ORDER) != 0)
		FUNC3(&offset, off, sizeof(off));
	else
		FUNC5(off, (uint64_t)offset);

	switch (sc->sc_ealgo) {
	case CRYPTO_AES_XTS:
		FUNC3(off, iv, sizeof(off));
		FUNC4(iv + sizeof(off), size - sizeof(off));
		break;
	default:
	    {
		u_char hash[SHA256_DIGEST_LENGTH];
		SHA256_CTX ctx;

		/* Copy precalculated SHA256 context for IV-Key. */
		FUNC3(&sc->sc_ivctx, &ctx, sizeof(ctx));
		FUNC2(&ctx, off, sizeof(off));
		FUNC1(hash, &ctx);
		FUNC3(hash, iv, FUNC0(sizeof(hash), size));
		break;
	    }
	}
}