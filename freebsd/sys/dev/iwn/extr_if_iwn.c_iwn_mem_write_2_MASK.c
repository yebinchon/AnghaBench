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
typedef  int uint32_t ;
typedef  int uint16_t ;
struct iwn_softc {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iwn_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct iwn_softc*,int,int) ; 

__attribute__((used)) static __inline void
FUNC2(struct iwn_softc *sc, uint32_t addr, uint16_t data)
{
	uint32_t tmp;

	tmp = FUNC0(sc, addr & ~3);
	if (addr & 3)
		tmp = (tmp & 0x0000ffff) | data << 16;
	else
		tmp = (tmp & 0xffff0000) | data;
	FUNC1(sc, addr & ~3, tmp);
}