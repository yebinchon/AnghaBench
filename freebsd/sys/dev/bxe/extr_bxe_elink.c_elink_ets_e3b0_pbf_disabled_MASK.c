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
typedef  scalar_t__ uint32_t ;
struct elink_params {int port; struct bxe_softc* sc; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0 ; 
 int ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1 ; 
 scalar_t__ ELINK_ETS_E3B0_PBF_MIN_W_VAL ; 
 scalar_t__ PBF_REG_COS0_WEIGHT_P0 ; 
 scalar_t__ PBF_REG_COS0_WEIGHT_P1 ; 
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0 ; 
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1 ; 
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 ; 
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 ; 
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 ; 
 scalar_t__ PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 ; 
 scalar_t__ PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0 ; 
 scalar_t__ PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1 ; 
 scalar_t__ PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0 ; 
 scalar_t__ PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1 ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct elink_params const*,scalar_t__ const) ; 

__attribute__((used)) static void FUNC2(const struct elink_params *params)
{
	struct bxe_softc *sc = params->sc;
	const uint8_t port = params->port;
	const uint32_t min_w_val_pbf = ELINK_ETS_E3B0_PBF_MIN_W_VAL;
	uint8_t i = 0;
	uint32_t base_weight = 0;
	uint8_t max_cos = 0;

	/* Mapping between entry  priority to client number 0 - COS0
	 * client, 2 - COS1, ... 5 - COS5)(HIGHEST) 4bits client num.
	 * TODO_ETS - Should be done by reset value or init tool
	 */
	if (port)
		/*  0x688 (|011|0 10|00 1|000) */
		FUNC0(sc, PBF_REG_ETS_ARB_PRIORITY_CLIENT_P1 , 0x688);
	else
		/*  (10 1|100 |011|0 10|00 1|000) */
		FUNC0(sc, PBF_REG_ETS_ARB_PRIORITY_CLIENT_P0 , 0x2C688);

	/* TODO_ETS - Should be done by reset value or init tool */
	if (port)
		/* 0x688 (|011|0 10|00 1|000)*/
		FUNC0(sc, PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P1, 0x688);
	else
	/* 0x2C688 (10 1|100 |011|0 10|00 1|000) */
	FUNC0(sc, PBF_REG_ETS_ARB_CLIENT_CREDIT_MAP_P0, 0x2C688);

	FUNC0(sc, (port) ? PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P1 :
		   PBF_REG_ETS_ARB_NUM_STRICT_ARB_SLOTS_P0 , 0x100);


	FUNC0(sc, (port) ? PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P1 :
		   PBF_REG_ETS_ARB_CLIENT_IS_STRICT_P0 , 0);

	FUNC0(sc, (port) ? PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P1 :
		   PBF_REG_ETS_ARB_CLIENT_IS_SUBJECT2WFQ_P0 , 0);
	/* In 2 port mode port0 has COS0-5 that can be used for WFQ.
	 * In 4 port mode port1 has COS0-2 that can be used for WFQ.
	 */
	if (!port) {
		base_weight = PBF_REG_COS0_WEIGHT_P0;
		max_cos = ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0;
	} else {
		base_weight = PBF_REG_COS0_WEIGHT_P1;
		max_cos = ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1;
	}

	for (i = 0; i < max_cos; i++)
		FUNC0(sc, base_weight + (0x4 * i), 0);

	FUNC1(params, min_w_val_pbf);
}