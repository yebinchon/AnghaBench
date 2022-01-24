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
struct gem_softc {int dummy; } ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct gem_softc*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC1 (struct gem_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gem_softc*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  GEM_MIF_CONFIG ; 
 int GEM_MIF_CONFIG_BB_ENA ; 

__attribute__((used)) static void
FUNC3(struct gem_softc *sc)
{

	/* Configure the MIF in frame mode. */
	FUNC2(sc, GEM_MIF_CONFIG,
	    FUNC1(sc, GEM_MIF_CONFIG) & ~GEM_MIF_CONFIG_BB_ENA);
	FUNC0(sc, GEM_MIF_CONFIG, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}