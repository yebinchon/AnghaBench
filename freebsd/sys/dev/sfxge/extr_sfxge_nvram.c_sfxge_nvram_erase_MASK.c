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
struct sfxge_softc {scalar_t__ family; int /*<<< orphan*/ * enp; } ;
typedef  int /*<<< orphan*/  efx_nvram_type_t ;
typedef  int /*<<< orphan*/  efx_nic_t ;

/* Variables and functions */
 scalar_t__ EFX_FAMILY_SIENA ; 
 int /*<<< orphan*/  EFX_NVRAM_DYNAMIC_CFG ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static int
FUNC3(struct sfxge_softc *sc, efx_nvram_type_t type)
{
	efx_nic_t *enp = sc->enp;
	size_t chunk_size;
	int rc = 0;

	if (type == EFX_NVRAM_DYNAMIC_CFG && sc->family == EFX_FAMILY_SIENA)
		return (0);

	if ((rc = FUNC2(enp, type, &chunk_size)) != 0)
		return (rc);

	rc = FUNC0(enp, type);

	FUNC1(enp, type, NULL);
	return (rc);
}