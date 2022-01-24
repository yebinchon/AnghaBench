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
struct glxsb_softc {scalar_t__ sc_cid; int /*<<< orphan*/  sc_task_mtx; int /*<<< orphan*/  sc_dev; } ;
struct glxsb_session {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTOCAP_F_HARDWARE ; 
 int /*<<< orphan*/  CRYPTO_AES_CBC ; 
 int /*<<< orphan*/  CRYPTO_MD5_HMAC ; 
 int /*<<< orphan*/  CRYPTO_NULL_HMAC ; 
 int /*<<< orphan*/  CRYPTO_RIPEMD160_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA2_256_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA2_384_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA2_512_HMAC ; 
 int ENOMEM ; 
 int /*<<< orphan*/  MTX_DEF ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct glxsb_softc *sc)
{

	sc->sc_cid = FUNC0(sc->sc_dev,
	    sizeof(struct glxsb_session), CRYPTOCAP_F_HARDWARE);

	if (sc->sc_cid < 0) {
		FUNC3(sc->sc_dev, "cannot get crypto driver id\n");
		return (ENOMEM);
	}

	FUNC5(&sc->sc_task_mtx, "glxsb_crypto_mtx", NULL, MTX_DEF);

	if (FUNC1(sc->sc_cid, CRYPTO_AES_CBC, 0, 0) != 0)
		goto crypto_fail;
	if (FUNC1(sc->sc_cid, CRYPTO_NULL_HMAC, 0, 0) != 0)
		goto crypto_fail;
	if (FUNC1(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0) != 0)
		goto crypto_fail;
	if (FUNC1(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0) != 0)
		goto crypto_fail;
	if (FUNC1(sc->sc_cid, CRYPTO_RIPEMD160_HMAC, 0, 0) != 0)
		goto crypto_fail;
	if (FUNC1(sc->sc_cid, CRYPTO_SHA2_256_HMAC, 0, 0) != 0)
		goto crypto_fail;
	if (FUNC1(sc->sc_cid, CRYPTO_SHA2_384_HMAC, 0, 0) != 0)
		goto crypto_fail;
	if (FUNC1(sc->sc_cid, CRYPTO_SHA2_512_HMAC, 0, 0) != 0)
		goto crypto_fail;

	return (0);

crypto_fail:
	FUNC3(sc->sc_dev, "cannot register crypto\n");
	FUNC2(sc->sc_cid);
	FUNC4(&sc->sc_task_mtx);
	return (ENOMEM);
}