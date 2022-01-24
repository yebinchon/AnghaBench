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
struct amd_ntb_softc {int dummy; } ;
typedef  enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef  enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (struct amd_ntb_softc*) ; 
 int FUNC1 (struct amd_ntb_softc*) ; 
 int FUNC2 (struct amd_ntb_softc*) ; 
 struct amd_ntb_softc* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4(device_t dev, enum ntb_speed *speed, enum ntb_width *width)
{
	struct amd_ntb_softc *ntb = FUNC3(dev);

	if (speed != NULL)
		*speed = FUNC1(ntb);
	if (width != NULL)
		*width = FUNC2(ntb);

	return (FUNC0(ntb));
}