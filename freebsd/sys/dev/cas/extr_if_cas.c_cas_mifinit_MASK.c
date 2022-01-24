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
struct cas_softc {int dummy; } ;

/* Variables and functions */
 int BUS_SPACE_BARRIER_READ ; 
 int BUS_SPACE_BARRIER_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct cas_softc*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  CAS_MIF_CONF ; 
 int CAS_MIF_CONF_BB_MODE ; 
 int FUNC1 (struct cas_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cas_softc*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC3(struct cas_softc *sc)
{

	/* Configure the MIF in frame mode. */
	FUNC2(sc, CAS_MIF_CONF,
	    FUNC1(sc, CAS_MIF_CONF) & ~CAS_MIF_CONF_BB_MODE);
	FUNC0(sc, CAS_MIF_CONF, 4,
	    BUS_SPACE_BARRIER_READ | BUS_SPACE_BARRIER_WRITE);
}