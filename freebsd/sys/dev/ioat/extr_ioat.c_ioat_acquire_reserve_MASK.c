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
struct ioat_softc {int dummy; } ;
typedef  int /*<<< orphan*/  bus_dmaengine_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct ioat_softc*,unsigned int,int) ; 
 struct ioat_softc* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(bus_dmaengine_t dmaengine, unsigned n, int mflags)
{
	struct ioat_softc *ioat;
	int error;

	ioat = FUNC3(dmaengine);
	FUNC0(dmaengine);

	error = FUNC2(ioat, n, mflags);
	if (error != 0)
		FUNC1(dmaengine);
	return (error);
}