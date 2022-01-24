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
struct saf1761_otg_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct saf1761_otg_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SOTG_ADDRESS ; 
 int SOTG_ADDRESS_ENABLE ; 

__attribute__((used)) static void
FUNC2(struct saf1761_otg_softc *sc, uint8_t addr)
{
	FUNC0(5, "addr=%d\n", addr);

	FUNC1(sc, SOTG_ADDRESS, addr | SOTG_ADDRESS_ENABLE);
}