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
 int /*<<< orphan*/  FUNC0 (struct iicbb_softc*,int /*<<< orphan*/ ,int,int) ; 
 struct iicbb_softc* FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(device_t dev, int timeout)
{
	struct iicbb_softc *sc = FUNC1(dev);

	FUNC0(sc,dev,0,1);
	FUNC0(sc,dev,1,1);
	FUNC0(sc,dev,0,1);
	return;
}