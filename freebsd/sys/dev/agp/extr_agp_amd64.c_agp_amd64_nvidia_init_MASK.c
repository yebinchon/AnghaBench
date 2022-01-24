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
 int /*<<< orphan*/  AGP_AMD64_NVIDIA_0_APBASE ; 
 int /*<<< orphan*/  AGP_AMD64_NVIDIA_1_APBASE1 ; 
 int /*<<< orphan*/  AGP_AMD64_NVIDIA_1_APBASE2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct agp_amd64_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void
FUNC5(device_t dev)
{
	struct agp_amd64_softc *sc = FUNC1(dev);

	FUNC0(dev);
	FUNC4(dev, AGP_AMD64_NVIDIA_0_APBASE,
	    (FUNC3(dev, AGP_AMD64_NVIDIA_0_APBASE, 4) & 0x0000000f) |
	    sc->apbase, 4);
	FUNC2(0, 11, 0, AGP_AMD64_NVIDIA_1_APBASE1, sc->apbase, 4);
	FUNC2(0, 11, 0, AGP_AMD64_NVIDIA_1_APBASE2, sc->apbase, 4);
}