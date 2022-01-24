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
typedef  int uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int FUNC2 (struct bxe_softc*) ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC4 (struct bxe_softc*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (struct bxe_softc*,int,int) ; 

__attribute__((used)) static void FUNC6(struct bxe_softc *sc, uint32_t addr, uint32_t len,
			     uint32_t blob_off)
{
	const uint8_t *data = NULL;
	int rc;
	uint32_t i;

	data = FUNC4(sc, addr, data) + blob_off*4;

	rc = FUNC3(sc, data, len);
	if (rc)
		return;

	/* gunzip_outlen is in dwords */
	len = FUNC2(sc);
	for (i = 0; i < len; i++)
		((uint32_t *)FUNC1(sc))[i] = (uint32_t)
				FUNC0(((uint32_t *)FUNC1(sc))[i]);

	FUNC5(sc, addr, len);
}