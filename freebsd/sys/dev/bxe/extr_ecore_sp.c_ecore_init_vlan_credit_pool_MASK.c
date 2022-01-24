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
typedef  scalar_t__ uint8_t ;
struct ecore_credit_pool_obj {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct bxe_softc*) ; 
 int FUNC1 (struct bxe_softc*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ecore_credit_pool_obj*,int,int) ; 

void FUNC3(struct bxe_softc *sc,
				 struct ecore_credit_pool_obj *p,
				 uint8_t func_id,
				 uint8_t func_num)
{
	if (FUNC0(sc)) {
		/* There is no VLAN credit in HW on 57710 and 57711 only
		 * MAC / MAC-VLAN can be set
		 */
		FUNC2(p, 0, -1);
	} else {
		/* CAM credit is equally divided between all active functions
		 * on the PATH.
		 */
		if (func_num > 0) {
			int credit = FUNC1(sc, func_num);

			FUNC2(p, -1/*unused for E2*/, credit);
		} else
			/* this should never happen! Block VLAN operations. */
			FUNC2(p, 0, 0);
	}
}