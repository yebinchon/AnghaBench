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
typedef  int u_int32_t ;
struct agp_ati_softc {scalar_t__ is_rs300; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATI_RS100_APSIZE ; 
 int /*<<< orphan*/  ATI_RS300_APSIZE ; 
 struct agp_ati_softc* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u_int32_t
FUNC2(device_t dev)
{
	struct agp_ati_softc *sc = FUNC0(dev);
	int size_value;

	if (sc->is_rs300)
		size_value = FUNC1(dev, ATI_RS300_APSIZE, 4);
	else
		size_value = FUNC1(dev, ATI_RS100_APSIZE, 4);

	size_value = (size_value & 0x0000000e) >> 1;
	size_value = (32 * 1024 * 1024) << size_value;

	return size_value;
}