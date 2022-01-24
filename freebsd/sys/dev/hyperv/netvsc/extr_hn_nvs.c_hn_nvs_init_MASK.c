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
struct hn_softc {int /*<<< orphan*/  hn_caps; int /*<<< orphan*/  hn_nvs_ver; int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_ndis_ver; int /*<<< orphan*/  hn_dev; } ;

/* Variables and functions */
 int ENXIO ; 
 int /*<<< orphan*/  HN_CAP_HASHVAL ; 
 int /*<<< orphan*/  HN_NDIS_VERSION_6_1 ; 
 int /*<<< orphan*/  HN_NDIS_VERSION_6_30 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HN_NVS_VERSION_4 ; 
 int /*<<< orphan*/  HN_NVS_VERSION_5 ; 
 scalar_t__ bootverbose ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct hn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * hn_nvs_version ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(struct hn_softc *sc)
{
	int i, error;

	if (FUNC2(sc->hn_dev)) {
		/*
		 * NVS version and NDIS version MUST NOT be changed.
		 */
		if (bootverbose) {
			FUNC4(sc->hn_ifp, "reinit NVS version 0x%x, "
			    "NDIS version %u.%u\n", sc->hn_nvs_ver,
			    FUNC0(sc->hn_ndis_ver),
			    FUNC1(sc->hn_ndis_ver));
		}

		error = FUNC3(sc, sc->hn_nvs_ver);
		if (error) {
			FUNC4(sc->hn_ifp, "reinit NVS version 0x%x "
			    "failed: %d\n", sc->hn_nvs_ver, error);
			return (error);
		}
		goto done;
	}

	/*
	 * Find the supported NVS version and set NDIS version accordingly.
	 */
	for (i = 0; i < FUNC5(hn_nvs_version); ++i) {
		error = FUNC3(sc, hn_nvs_version[i]);
		if (!error) {
			sc->hn_nvs_ver = hn_nvs_version[i];

			/* Set NDIS version according to NVS version. */
			sc->hn_ndis_ver = HN_NDIS_VERSION_6_30;
			if (sc->hn_nvs_ver <= HN_NVS_VERSION_4)
				sc->hn_ndis_ver = HN_NDIS_VERSION_6_1;

			if (bootverbose) {
				FUNC4(sc->hn_ifp, "NVS version 0x%x, "
				    "NDIS version %u.%u\n", sc->hn_nvs_ver,
				    FUNC0(sc->hn_ndis_ver),
				    FUNC1(sc->hn_ndis_ver));
			}
			goto done;
		}
	}
	FUNC4(sc->hn_ifp, "no NVS available\n");
	return (ENXIO);

done:
	if (sc->hn_nvs_ver >= HN_NVS_VERSION_5)
		sc->hn_caps |= HN_CAP_HASHVAL;
	return (0);
}