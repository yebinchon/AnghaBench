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
typedef  int /*<<< orphan*/  uint32_t ;
struct ecore_mcast_ramrod_params {int dummy; } ;
struct ecore_mcast_obj {int dummy; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,char*,int) ; 
 int FUNC2 (struct ecore_mcast_obj*,int) ; 

__attribute__((used)) static inline void FUNC3(struct bxe_softc *sc,
	struct ecore_mcast_obj *o, struct ecore_mcast_ramrod_params *p,
	uint32_t *mc_filter)
{
	int bit;

	for (bit = FUNC2(o, 0);
	     bit >= 0;
	     bit = FUNC2(o, bit + 1)) {
		FUNC0(mc_filter, bit);
		FUNC1(sc, "About to set bin %d\n", bit);
	}
}