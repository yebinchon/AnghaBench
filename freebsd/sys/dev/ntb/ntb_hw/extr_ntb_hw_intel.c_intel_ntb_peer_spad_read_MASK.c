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
typedef  int /*<<< orphan*/  uint32_t ;
struct ntb_softc {unsigned int spad_count; TYPE_1__* peer_reg; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ spad; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTB_SDOORBELL_LOCKUP ; 
 scalar_t__ XEON_SPAD_OFFSET ; 
 struct ntb_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(device_t dev, unsigned int idx, uint32_t *val)
{
	struct ntb_softc *ntb = FUNC1(dev);

	if (idx >= ntb->spad_count)
		return (EINVAL);

	if (FUNC0(ntb, NTB_SDOORBELL_LOCKUP))
		*val = FUNC2(4, XEON_SPAD_OFFSET + idx * 4);
	else
		*val = FUNC3(4, ntb->peer_reg->spad + idx * 4);

	return (0);
}