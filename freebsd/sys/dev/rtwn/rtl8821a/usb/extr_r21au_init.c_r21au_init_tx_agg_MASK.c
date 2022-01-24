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
struct rtwn_usb_softc {int tx_agg_desc_num; } ;
struct rtwn_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R21A_DWBCN1_CTRL ; 
 struct rtwn_usb_softc* FUNC0 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtwn_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtwn_softc*,int /*<<< orphan*/ ,int) ; 

void
FUNC3(struct rtwn_softc *sc)
{
	struct rtwn_usb_softc *uc = FUNC0(sc);

	FUNC1(sc);

	FUNC2(sc, R21A_DWBCN1_CTRL, uc->tx_agg_desc_num << 1);
}