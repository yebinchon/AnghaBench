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
struct iwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IWN_HW_IF_CONFIG ; 
 int /*<<< orphan*/  IWN_HW_IF_CONFIG_EEPROM_LOCKED ; 

__attribute__((used)) static __inline void
FUNC1(struct iwn_softc *sc)
{
	FUNC0(sc, IWN_HW_IF_CONFIG, IWN_HW_IF_CONFIG_EEPROM_LOCKED);
}