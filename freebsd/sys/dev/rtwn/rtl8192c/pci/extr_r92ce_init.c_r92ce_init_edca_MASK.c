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
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R92C_EDCA_BE_PARAM ; 
 int /*<<< orphan*/  R92C_EDCA_BK_PARAM ; 
 int /*<<< orphan*/  R92C_EDCA_VI_PARAM ; 
 int /*<<< orphan*/  R92C_EDCA_VO_PARAM ; 
 int /*<<< orphan*/  R92C_MAC_SPEC_SIFS ; 
 int /*<<< orphan*/  R92C_SIFS_CCK ; 
 int /*<<< orphan*/  R92C_SIFS_OFDM ; 
 int /*<<< orphan*/  R92C_SPEC_SIFS ; 
 int /*<<< orphan*/  FUNC0 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC2(struct rtwn_softc *sc)
{
	/* SIFS */
	FUNC0(sc, R92C_SPEC_SIFS, 0x1010);
	FUNC0(sc, R92C_MAC_SPEC_SIFS, 0x1010);
	FUNC0(sc, R92C_SIFS_CCK, 0x1010);
	FUNC0(sc, R92C_SIFS_OFDM, 0x0e0e);
	/* TXOP */
	FUNC1(sc, R92C_EDCA_BE_PARAM, 0x005ea42b);
	FUNC1(sc, R92C_EDCA_BK_PARAM, 0x0000a44f);
	FUNC1(sc, R92C_EDCA_VI_PARAM, 0x005e4322);
	FUNC1(sc, R92C_EDCA_VO_PARAM, 0x002f3222);
}