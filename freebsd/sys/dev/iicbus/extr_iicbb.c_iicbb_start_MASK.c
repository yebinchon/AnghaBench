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
struct iicbb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iicbb_softc*,int /*<<< orphan*/ ,int,int) ; 
 int IIC_ETIMEOUT ; 
 struct iicbb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(device_t dev, u_char slave, int timeout)
{
	struct iicbb_softc *sc = FUNC3(dev);
	int error;

	FUNC0(FUNC7("<"));

	FUNC2(sc,dev,1,1);

	/* SCL must be high now. */
	if (!FUNC1(dev))
		return (IIC_ETIMEOUT);

	FUNC2(sc,dev,1,0);
	FUNC2(sc,dev,0,0);

	/* send address */
	FUNC5(dev, slave, timeout);

	/* check for ack */
	error = FUNC4(dev, timeout);
	if (error == 0)
		return (0);

	FUNC6(dev);
	return (error);
}