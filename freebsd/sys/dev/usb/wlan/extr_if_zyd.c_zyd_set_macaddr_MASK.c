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
struct zyd_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ZYD_MAC_MACADRH ; 
 int /*<<< orphan*/  ZYD_MAC_MACADRL ; 
 int /*<<< orphan*/  FUNC0 (struct zyd_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC1(struct zyd_softc *sc, const uint8_t *addr)
{
	int error;
	uint32_t tmp;

	tmp = addr[3] << 24 | addr[2] << 16 | addr[1] << 8 | addr[0];
	FUNC0(sc, ZYD_MAC_MACADRL, tmp);
	tmp = addr[5] << 8 | addr[4];
	FUNC0(sc, ZYD_MAC_MACADRH, tmp);
fail:
	return (error);
}