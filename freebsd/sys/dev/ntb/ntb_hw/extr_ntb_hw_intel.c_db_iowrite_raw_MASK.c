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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint16_t ;
struct ntb_softc {scalar_t__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ NTB_ATOM ; 
 scalar_t__ NTB_XEON ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC2(struct ntb_softc *ntb, uint64_t regoff, uint64_t val)
{

	if (ntb->type == NTB_ATOM) {
		FUNC1(8, regoff, val);
		return;
	}

	FUNC0(ntb->type == NTB_XEON, ("bad ntb type"));
	FUNC1(2, regoff, (uint16_t)val);
}