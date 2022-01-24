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
struct iwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct iwn_softc*) ; 
 int IWN_PRPH_DWORD ; 
 int /*<<< orphan*/  IWN_PRPH_RADDR ; 
 int /*<<< orphan*/  IWN_PRPH_RDATA ; 
 int FUNC1 (struct iwn_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iwn_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __inline uint32_t
FUNC3(struct iwn_softc *sc, uint32_t addr)
{
	FUNC2(sc, IWN_PRPH_RADDR, IWN_PRPH_DWORD | addr);
	FUNC0(sc);
	return FUNC1(sc, IWN_PRPH_RDATA);
}