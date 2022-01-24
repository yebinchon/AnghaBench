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
struct nfe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFE_MACADDR_HI ; 
 int /*<<< orphan*/  NFE_MACADDR_LO ; 
 int /*<<< orphan*/  FUNC0 (struct nfe_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC1(struct nfe_softc *sc, uint8_t *addr)
{

	FUNC0(sc, NFE_MACADDR_LO, addr[5] <<  8 | addr[4]);
	FUNC0(sc, NFE_MACADDR_HI, addr[3] << 24 | addr[2] << 16 |
	    addr[1] << 8 | addr[0]);
}