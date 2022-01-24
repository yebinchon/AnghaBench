#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct ntb_softc {int /*<<< orphan*/  db_mask; TYPE_1__* self_reg; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  db_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_softc*) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTB_SB01BASE_LOCKUP ; 
 int /*<<< orphan*/  FUNC3 (struct ntb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ntb_softc* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(device_t dev, uint64_t bits)
{
	struct ntb_softc *ntb = FUNC4(dev);

	FUNC0(ntb);
	ntb->db_mask |= bits;
	if (!FUNC2(ntb, NTB_SB01BASE_LOCKUP))
		FUNC3(ntb, ntb->self_reg->db_mask, ntb->db_mask);
	FUNC1(ntb);
}