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
typedef  int /*<<< orphan*/  uint8_t ;
struct elink_phy {int dummy; } ;
struct elink_params {struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct elink_params*,struct elink_phy*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct elink_params*,struct elink_phy*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct elink_params *params,
				      struct elink_phy *phy,
				      uint8_t tx_en)
{
	struct bxe_softc *sc = params->sc;
	FUNC1(sc, "Setting SFP+ transmitter to %d\n", tx_en);
	if (FUNC0(sc))
		FUNC3(params, phy, tx_en);
	else
		FUNC2(params, phy, tx_en);
}