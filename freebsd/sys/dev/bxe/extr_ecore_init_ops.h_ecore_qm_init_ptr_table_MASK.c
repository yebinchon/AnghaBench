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
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*) ; 
#define  INITOP_CLEAR 130 
#define  INITOP_INIT 129 
#define  INITOP_SET 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  QM_REG_BASEADDR ; 
 int /*<<< orphan*/  QM_REG_BASEADDR_EXT_A ; 
 int /*<<< orphan*/  QM_REG_PTRTBL ; 
 int /*<<< orphan*/  QM_REG_PTRTBL_EXT_A ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct bxe_softc *sc, int qm_cid_count,
				    uint8_t initop)
{
	if (!FUNC1(qm_cid_count))
		return;

	switch (initop) {
	case INITOP_INIT:
		/* set in the init-value array */
	case INITOP_SET:
		FUNC2(sc, qm_cid_count,
				       QM_REG_BASEADDR, QM_REG_PTRTBL);
		if (FUNC0(sc))
			FUNC2(sc, qm_cid_count,
					       QM_REG_BASEADDR_EXT_A,
					       QM_REG_PTRTBL_EXT_A);
		break;
	case INITOP_CLEAR:
		break;
	}
}