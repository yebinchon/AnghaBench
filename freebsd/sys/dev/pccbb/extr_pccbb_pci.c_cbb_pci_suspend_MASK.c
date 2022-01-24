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
struct cbb_softc {scalar_t__ cardok; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  CBB_SOCKET_MASK ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct cbb_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct cbb_softc* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t brdev)
{
	int			error = 0;
	struct cbb_softc	*sc = FUNC2(brdev);

	error = FUNC0(brdev);
	if (error != 0)
		return (error);
	FUNC1(sc, CBB_SOCKET_MASK, 0);	/* Quiet hardware */
	sc->cardok = 0;				/* Card is bogus now */
	return (0);
}