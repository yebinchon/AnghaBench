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
struct ntb_softc {int dummy; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct ntb_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct ntb_softc*) ; 
 int FUNC2 (struct ntb_softc*) ; 
 int FUNC3 (struct ntb_softc*) ; 

__attribute__((used)) static bool
FUNC4(device_t dev, enum ntb_speed *speed, enum ntb_width *width)
{
	struct ntb_softc *ntb = FUNC0(dev);

	if (speed != NULL)
		*speed = FUNC1(ntb);
	if (width != NULL)
		*width = FUNC2(ntb);
	return (FUNC3(ntb));
}