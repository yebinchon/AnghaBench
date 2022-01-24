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
typedef  int /*<<< orphan*/  video_adapter_t ;
typedef  int uint8_t ;
struct terasic_mtl_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct terasic_mtl_softc*,int*,int*) ; 

__attribute__((used)) static int
FUNC1(video_adapter_t *adp, int *colp, int *rowp)
{
	struct terasic_mtl_softc *sc;
	uint8_t col, row;

	sc = (struct terasic_mtl_softc *)adp;
	FUNC0(sc, &col, &row);
	*colp = col;
	*rowp = row;
	return (0);
}