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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int ECORE_E3B0_PORT1_COS_OFFSET ; 
 int FUNC0 (int,scalar_t__,int) ; 
 int ECORE_PORT2_MODE_NUM_VNICS ; 
 int ECORE_PORT4_MODE_NUM_VNICS ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (struct bxe_softc*) ; 
 int MODE_E3_B0 ; 
 int MODE_PORT4 ; 
 scalar_t__ FUNC5 (struct bxe_softc*) ; 
 int QM_REG_QVOQIDX_0 ; 
 int FUNC6 (struct bxe_softc*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct bxe_softc*,int,int) ; 

__attribute__((used)) static inline void FUNC8(struct bxe_softc *sc, uint32_t q_num, uint32_t new_cos)
{
	/* find current COS mapping */
	uint32_t curr_cos = FUNC6(sc, QM_REG_QVOQIDX_0 + q_num * 4);

	/* check if queue->COS mapping has changed */
	if (curr_cos != new_cos) {
		uint32_t num_vnics = ECORE_PORT2_MODE_NUM_VNICS;
		uint32_t reg_addr, reg_bit_map, vnic;

		/* update parameters for 4port mode */
		if (FUNC4(sc) & MODE_PORT4) {
			num_vnics = ECORE_PORT4_MODE_NUM_VNICS;
			if (FUNC5(sc)) {
				curr_cos += ECORE_E3B0_PORT1_COS_OFFSET;
				new_cos += ECORE_E3B0_PORT1_COS_OFFSET;
			}
		}

		/* change queue mapping for each VNIC */
		for (vnic = 0; vnic < num_vnics; vnic++) {
			uint32_t pf_q_num =
				FUNC0(q_num, FUNC5(sc), vnic);
			uint32_t q_bit_map = 1 << (pf_q_num & 0x1f);

			/* overwrite queue->VOQ mapping */
			FUNC7(sc, FUNC2(pf_q_num), new_cos);

			/* clear queue bit from current COS bit map */
			reg_addr = FUNC3(curr_cos, pf_q_num);
			reg_bit_map = FUNC6(sc, reg_addr);
			FUNC7(sc, reg_addr, reg_bit_map & (~q_bit_map));

			/* set queue bit in new COS bit map */
			reg_addr = FUNC3(new_cos, pf_q_num);
			reg_bit_map = FUNC6(sc, reg_addr);
			FUNC7(sc, reg_addr, reg_bit_map | q_bit_map);

			/* set/clear queue bit in command-queue bit map
			(E2/E3A0 only, valid COS values are 0/1) */
			if (!(FUNC4(sc) & MODE_E3_B0)) {
				reg_addr = FUNC1(pf_q_num);
				reg_bit_map = FUNC6(sc, reg_addr);
				q_bit_map = 1 << (2 * (pf_q_num & 0xf));
				reg_bit_map = new_cos ?
					      (reg_bit_map | q_bit_map) :
					      (reg_bit_map & (~q_bit_map));
				FUNC7(sc, reg_addr, reg_bit_map);
			}
		}
	}
}