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
struct ntb_softc {TYPE_1__* self_reg; int /*<<< orphan*/  fake_db; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  db_bell; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTB_SB01BASE_LOCKUP ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 struct ntb_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint64_t
FUNC3(device_t dev)
{
	struct ntb_softc *ntb = FUNC2(dev);

	if (FUNC0(ntb, NTB_SB01BASE_LOCKUP))
		return (ntb->fake_db);

	return (FUNC1(ntb, ntb->self_reg->db_bell));
}