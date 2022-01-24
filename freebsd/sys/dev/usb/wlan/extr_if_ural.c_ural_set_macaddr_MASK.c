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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct ural_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int const*,char*) ; 
 int /*<<< orphan*/  RAL_MAC_CSR2 ; 
 int /*<<< orphan*/  RAL_MAC_CSR3 ; 
 int /*<<< orphan*/  RAL_MAC_CSR4 ; 
 int /*<<< orphan*/  FUNC1 (struct ural_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC2(struct ural_softc *sc, const uint8_t *addr)
{
	uint16_t tmp;

	tmp = addr[0] | addr[1] << 8;
	FUNC1(sc, RAL_MAC_CSR2, tmp);

	tmp = addr[2] | addr[3] << 8;
	FUNC1(sc, RAL_MAC_CSR3, tmp);

	tmp = addr[4] | addr[5] << 8;
	FUNC1(sc, RAL_MAC_CSR4, tmp);

	FUNC0("setting MAC address to %6D\n", addr, ":");
}