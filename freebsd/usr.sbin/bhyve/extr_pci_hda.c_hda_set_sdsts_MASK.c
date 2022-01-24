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
struct hda_softc {int dummy; } ;

/* Variables and functions */
 int HDA_SDSTS_IRQ_MASK ; 
 int FUNC0 (struct hda_softc*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hda_softc*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hda_softc*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hda_softc*) ; 

__attribute__((used)) static void
FUNC4(struct hda_softc *sc, uint32_t offset, uint32_t old)
{
	uint32_t value = FUNC0(sc, offset);

	FUNC2(sc, offset, old);

	/* clear the corresponding bits written by the software (guest) */
	FUNC1(sc, offset, value & HDA_SDSTS_IRQ_MASK, 0);

	FUNC3(sc);
}