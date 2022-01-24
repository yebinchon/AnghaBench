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
typedef  int uint32_t ;
struct rt2560_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rt2560_softc*,char*,int const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt2560_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RT2560_CSR3 ; 
 int /*<<< orphan*/  RT2560_CSR4 ; 

__attribute__((used)) static void
FUNC2(struct rt2560_softc *sc, const uint8_t *addr)
{
	uint32_t tmp;

	tmp = addr[0] | addr[1] << 8 | addr[2] << 16 | addr[3] << 24;
	FUNC1(sc, RT2560_CSR3, tmp);

	tmp = addr[4] | addr[5] << 8;
	FUNC1(sc, RT2560_CSR4, tmp);

	FUNC0(sc, "setting MAC address to %6D\n", addr, ":");
}