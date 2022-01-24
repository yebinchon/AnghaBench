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
typedef  unsigned char u_char ;
struct iicbb_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct iicbb_softc*,int /*<<< orphan*/ ,int,int) ; 
 struct iicbb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char) ; 

__attribute__((used)) static u_char
FUNC7(device_t dev, int last, int timeout)
{
	struct iicbb_softc *sc = FUNC3(dev);
	int i;
	unsigned char data=0;

	FUNC2(sc,dev,0,1);
	for (i=7; i>=0; i--) 
	{
		FUNC2(sc,dev,1,1);
		if (FUNC1(dev))
			data |= (1<<i);
		FUNC2(sc,dev,0,1);
	}
	if (last) {
		FUNC4(dev, timeout);
	} else {
		FUNC5(dev, timeout);
	}
	FUNC0(FUNC6("r%02x%c ",(int)data,last?'-':'+'));
	return (data);
}