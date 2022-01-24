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
struct sge_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sge_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sge_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GMIIControl ; 
 int /*<<< orphan*/  IntrControl ; 
 int /*<<< orphan*/  IntrMask ; 
 int /*<<< orphan*/  IntrStatus ; 
 int /*<<< orphan*/  RX_CTL ; 
 int /*<<< orphan*/  TX_CTL ; 

__attribute__((used)) static void
FUNC3(struct sge_softc *sc)
{

	FUNC1(sc, IntrMask, 0);
	FUNC1(sc, IntrStatus, 0xffffffff);

	/* Soft reset. */
	FUNC1(sc, IntrControl, 0x8000);
	FUNC0(sc, IntrControl);
	FUNC2(100);
	FUNC1(sc, IntrControl, 0);
	/* Stop MAC. */
	FUNC1(sc, TX_CTL, 0x1a00);
	FUNC1(sc, RX_CTL, 0x1a00);

	FUNC1(sc, IntrMask, 0);
	FUNC1(sc, IntrStatus, 0xffffffff);

	FUNC1(sc, GMIIControl, 0);
}