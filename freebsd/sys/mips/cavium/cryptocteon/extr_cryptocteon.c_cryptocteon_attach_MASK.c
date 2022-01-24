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
struct octo_sess {int dummy; } ;
struct cryptocteon_softc {scalar_t__ sc_cid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CRYPTOCAP_F_HARDWARE ; 
 int CRYPTOCAP_F_SYNC ; 
 int /*<<< orphan*/  CRYPTO_3DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_AES_CBC ; 
 int /*<<< orphan*/  CRYPTO_DES_CBC ; 
 int /*<<< orphan*/  CRYPTO_MD5_HMAC ; 
 int /*<<< orphan*/  CRYPTO_SHA1_HMAC ; 
 int ENXIO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cryptocteon_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct cryptocteon_softc *sc;

	sc = FUNC2(dev);

	sc->sc_cid = FUNC0(dev, sizeof(struct octo_sess),
	    CRYPTOCAP_F_HARDWARE | CRYPTOCAP_F_SYNC);
	if (sc->sc_cid < 0) {
		FUNC3(dev, "crypto_get_driverid ret %d\n", sc->sc_cid);
		return (ENXIO);
	}

	FUNC1(sc->sc_cid, CRYPTO_MD5_HMAC, 0, 0);
	FUNC1(sc->sc_cid, CRYPTO_SHA1_HMAC, 0, 0);
	FUNC1(sc->sc_cid, CRYPTO_DES_CBC, 0, 0);
	FUNC1(sc->sc_cid, CRYPTO_3DES_CBC, 0, 0);
	FUNC1(sc->sc_cid, CRYPTO_AES_CBC, 0, 0);

	return (0);
}