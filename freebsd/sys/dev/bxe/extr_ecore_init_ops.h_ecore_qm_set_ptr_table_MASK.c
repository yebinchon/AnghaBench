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
typedef  scalar_t__ uint32_t ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int QM_QUEUES_PER_FUNC ; 
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,scalar_t__,scalar_t__*,int) ; 

__attribute__((used)) static void FUNC2(struct bxe_softc *sc, int qm_cid_count,
				   uint32_t base_reg, uint32_t reg)
{
	int i;
	uint32_t wb_data[2] = {0, 0};
	for (i = 0; i < 4 * QM_QUEUES_PER_FUNC; i++) {
		FUNC0(sc, base_reg + i*4,
		       qm_cid_count * 4 * (i % QM_QUEUES_PER_FUNC));
		FUNC1(sc, reg + i*8,
				 wb_data, 2);
	}
}