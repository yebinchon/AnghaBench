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
struct hn_softc {int /*<<< orphan*/  hn_ifp; int /*<<< orphan*/  hn_ndis_ver; } ;
struct hn_nvs_ndis_init {int /*<<< orphan*/  nvs_ndis_minor; int /*<<< orphan*/  nvs_ndis_major; int /*<<< orphan*/  nvs_type; } ;
typedef  int /*<<< orphan*/  ndis ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HN_NVS_TYPE_NDIS_INIT ; 
 int FUNC2 (struct hn_softc*,struct hn_nvs_ndis_init*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct hn_nvs_ndis_init*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(struct hn_softc *sc)
{
	struct hn_nvs_ndis_init ndis;
	int error;

	FUNC4(&ndis, 0, sizeof(ndis));
	ndis.nvs_type = HN_NVS_TYPE_NDIS_INIT;
	ndis.nvs_ndis_major = FUNC0(sc->hn_ndis_ver);
	ndis.nvs_ndis_minor = FUNC1(sc->hn_ndis_ver);

	/* NOTE: No response. */
	error = FUNC2(sc, &ndis, sizeof(ndis));
	if (error)
		FUNC3(sc->hn_ifp, "send nvs ndis init failed: %d\n", error);
	return (error);
}