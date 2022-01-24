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
struct wi_softc {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wi_softc*) ; 
 int /*<<< orphan*/  FUNC1 (struct wi_softc*) ; 
 struct wi_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct wi_softc*,int) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	struct wi_softc	*sc = FUNC2(dev);

	FUNC0(sc);
	FUNC3(sc, 1);
	FUNC1(sc);
	
	return (0);
}