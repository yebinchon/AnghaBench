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
typedef  int uint16_t ;
struct elink_vars {int line_speed; scalar_t__ duplex; } ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;
typedef  int /*<<< orphan*/  elink_status_t ;

/* Variables and functions */
 scalar_t__ DUPLEX_HALF ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
 int /*<<< orphan*/  ELINK_LED_MODE_OPER ; 
#define  ELINK_SPEED_10 131 
#define  ELINK_SPEED_100 130 
#define  ELINK_SPEED_1000 129 
#define  ELINK_SPEED_2500 128 
 int /*<<< orphan*/  ELINK_STATUS_ERROR ; 
 int /*<<< orphan*/  ELINK_STATUS_OK ; 
 int EMAC_MODE_25G_MODE ; 
 int EMAC_MODE_HALF_DUPLEX ; 
 int EMAC_MODE_PORT_GMII ; 
 int EMAC_MODE_PORT_MII ; 
 int EMAC_MODE_PORT_MII_10M ; 
 scalar_t__ EMAC_REG_EMAC_MODE ; 
 scalar_t__ GRCBASE_EMAC0 ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct elink_params*,struct elink_vars*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static elink_status_t FUNC5(struct elink_params *params,
			      struct elink_vars *vars)
{
	struct bxe_softc *sc = params->sc;
	uint8_t port = params->port;
	uint16_t mode = 0;

	FUNC0(sc, "setting link speed & duplex\n");
	FUNC2(sc, GRCBASE_EMAC0 + port*0x400 +
		       EMAC_REG_EMAC_MODE,
		       (EMAC_MODE_25G_MODE |
			EMAC_MODE_PORT_MII_10M |
			EMAC_MODE_HALF_DUPLEX));
	switch (vars->line_speed) {
	case ELINK_SPEED_10:
		mode |= EMAC_MODE_PORT_MII_10M;
		break;

	case ELINK_SPEED_100:
		mode |= EMAC_MODE_PORT_MII;
		break;

	case ELINK_SPEED_1000:
		mode |= EMAC_MODE_PORT_GMII;
		break;

	case ELINK_SPEED_2500:
		mode |= (EMAC_MODE_25G_MODE | EMAC_MODE_PORT_GMII);
		break;

	default:
		/* 10G not valid for EMAC */
		FUNC1(sc, "Invalid line_speed 0x%x\n",
			   vars->line_speed);
		return ELINK_STATUS_ERROR;
	}

	if (vars->duplex == DUPLEX_HALF)
		mode |= EMAC_MODE_HALF_DUPLEX;
	FUNC3(sc,
		      GRCBASE_EMAC0 + port*0x400 + EMAC_REG_EMAC_MODE,
		      mode);

	FUNC4(params, vars, ELINK_LED_MODE_OPER, vars->line_speed);
	return ELINK_STATUS_OK;
}