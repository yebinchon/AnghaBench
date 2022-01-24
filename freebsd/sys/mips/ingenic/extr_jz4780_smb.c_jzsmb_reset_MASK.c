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
typedef  int /*<<< orphan*/  u_char ;
struct jzsmb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct jzsmb_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct jzsmb_softc*) ; 
 struct jzsmb_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
	struct jzsmb_softc *sc;
	int error;

	sc = FUNC2(dev);

	FUNC0(sc);
	error = FUNC3(dev, addr);
	FUNC1(sc);

	return (error);
}