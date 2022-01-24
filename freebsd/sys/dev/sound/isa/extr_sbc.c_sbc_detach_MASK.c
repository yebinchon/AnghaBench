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
struct sbc_softc {int /*<<< orphan*/  child_pcm; int /*<<< orphan*/  child_midi1; int /*<<< orphan*/  child_midi2; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct sbc_softc* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbc_softc*) ; 
 int /*<<< orphan*/  FUNC4 (struct sbc_softc*) ; 
 int /*<<< orphan*/  FUNC5 (struct sbc_softc*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	struct sbc_softc *scp = FUNC2(dev);

	FUNC4(scp);
	FUNC1(dev, scp->child_midi2);
	FUNC1(dev, scp->child_midi1);
	FUNC1(dev, scp->child_pcm);
	FUNC3(scp);
	FUNC5(scp);
	return FUNC0(dev);
}