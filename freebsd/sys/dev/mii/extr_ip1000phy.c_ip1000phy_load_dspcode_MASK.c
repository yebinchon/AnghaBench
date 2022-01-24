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
struct mii_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct mii_softc*,int,int) ; 

__attribute__((used)) static void
FUNC2(struct mii_softc *sc)
{

	FUNC1(sc, 31, 0x0001);
	FUNC1(sc, 27, 0x01e0);
	FUNC1(sc, 31, 0x0002);
	FUNC1(sc, 27, 0xeb8e);
	FUNC1(sc, 31, 0x0000);
	FUNC1(sc, 30, 0x005e);
	FUNC1(sc, 9, 0x0700);

	FUNC0(50);
}