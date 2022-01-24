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
struct jzsmb_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SMBENB ; 
 int /*<<< orphan*/  SMBENBST ; 
 int SMBENBST_SMBEN ; 
 int /*<<< orphan*/  SMBENB_SMBENB ; 
 int /*<<< orphan*/  FUNC0 (struct jzsmb_softc*) ; 
 int FUNC1 (struct jzsmb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct jzsmb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct jzsmb_softc *sc, int enable)
{
	FUNC0(sc);

	if (enable) {
		FUNC2(sc, SMBENB, SMBENB_SMBENB);
		while ((FUNC1(sc, SMBENBST) & SMBENBST_SMBEN) == 0)
			;
	} else {
		FUNC2(sc, SMBENB, 0);
		while ((FUNC1(sc, SMBENBST) & SMBENBST_SMBEN) != 0)
			;
	}

	return (0);
}