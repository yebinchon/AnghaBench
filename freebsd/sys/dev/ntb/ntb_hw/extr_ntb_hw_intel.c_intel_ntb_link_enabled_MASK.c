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
typedef  int uint32_t ;
struct ntb_softc {scalar_t__ type; scalar_t__ conn_type; TYPE_1__* reg; int /*<<< orphan*/  device; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {int /*<<< orphan*/  ntb_ctl; } ;

/* Variables and functions */
 int ATOM_PPD_INIT_LINK ; 
 scalar_t__ NTB_ATOM ; 
 int NTB_CNTL_LINK_DISABLE ; 
 scalar_t__ NTB_CONN_TRANSPARENT ; 
 int /*<<< orphan*/  NTB_PPD_OFFSET ; 
 struct ntb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC3(device_t dev)
{
	struct ntb_softc *ntb = FUNC0(dev);
	uint32_t cntl;

	if (ntb->type == NTB_ATOM) {
		cntl = FUNC2(ntb->device, NTB_PPD_OFFSET, 4);
		return ((cntl & ATOM_PPD_INIT_LINK) != 0);
	}

	if (ntb->conn_type == NTB_CONN_TRANSPARENT)
		return (true);

	cntl = FUNC1(4, ntb->reg->ntb_ctl);
	return ((cntl & NTB_CNTL_LINK_DISABLE) == 0);
}