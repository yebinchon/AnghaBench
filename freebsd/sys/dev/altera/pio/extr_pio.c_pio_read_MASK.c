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
struct pio_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIO_DATA ; 
 int FUNC0 (struct pio_softc*,int /*<<< orphan*/ ) ; 
 struct pio_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(device_t dev)
{
	struct pio_softc *sc;

	sc = FUNC1(dev);

	return (FUNC0(sc, PIO_DATA));
}