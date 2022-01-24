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
struct agp_amd64_softc {int apbase; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  AGP_AMD64_ULI_APBASE ; 
 int /*<<< orphan*/  AGP_AMD64_ULI_HTT_FEATURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct agp_amd64_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct agp_amd64_softc *sc = FUNC1(dev);

	FUNC0(dev);
	FUNC3(dev, AGP_AMD64_ULI_APBASE,
	    (FUNC2(dev, AGP_AMD64_ULI_APBASE, 4) & 0x0000000f) |
	    sc->apbase, 4);
	FUNC3(dev, AGP_AMD64_ULI_HTT_FEATURE, sc->apbase, 4);
}