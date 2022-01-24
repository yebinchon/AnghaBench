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
struct vtballoon_softc {int /*<<< orphan*/  vtballoon_dev; int /*<<< orphan*/  vtballoon_deflate_vq; int /*<<< orphan*/  vtballoon_inflate_vq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct vtballoon_softc *sc)
{

	FUNC1(sc->vtballoon_inflate_vq);
	FUNC1(sc->vtballoon_deflate_vq);

	FUNC0(sc->vtballoon_dev);
}