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
struct iicbb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iicbb_softc*,int /*<<< orphan*/ ,int,int) ; 
 int IIC_ETIMEOUT ; 
 struct iicbb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	struct iicbb_softc *sc = FUNC3(dev);

	FUNC2(sc,dev,0,0);
	FUNC2(sc,dev,1,0);
	FUNC2(sc,dev,1,1);
	FUNC0(FUNC4(">"));
	FUNC0(FUNC4("\n"));

	/* SCL must be high now. */
	if (!FUNC1(dev))
		return (IIC_ETIMEOUT);
	return (0);
}