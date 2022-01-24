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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct iicbb_softc*,int /*<<< orphan*/ ,int,int) ; 
 int IIC_ENOACK ; 
 int IIC_ETIMEOUT ; 
 struct iicbb_softc* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char) ; 

__attribute__((used)) static int
FUNC7(device_t dev, int timeout)
{
	struct iicbb_softc *sc = FUNC5(dev);
	int noack;
	int k = 0;

	FUNC4(sc,dev,0,1);
	FUNC4(sc,dev,1,1);

	/* SCL must be high now. */
	if (!FUNC2(dev))
		return (IIC_ETIMEOUT);

	do {
		noack = FUNC3(dev);
		if (!noack)
			break;
		FUNC0(1);
		k++;
	} while (k < timeout);

	FUNC4(sc,dev,0,1);
	FUNC1(FUNC6("%c ",noack?'-':'+'));

	return (noack ? IIC_ENOACK : 0);
}