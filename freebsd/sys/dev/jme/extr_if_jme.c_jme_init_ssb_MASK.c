#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  jme_ssb_map; int /*<<< orphan*/  jme_ssb_tag; } ;
struct jme_ring_data {int /*<<< orphan*/  jme_ssb_block; } ;
struct jme_softc {TYPE_1__ jme_cdata; struct jme_ring_data jme_rdata; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  JME_SSB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct jme_softc *sc)
{
	struct jme_ring_data *rd;

	rd = &sc->jme_rdata;
	FUNC1(rd->jme_ssb_block, JME_SSB_SIZE);
	FUNC0(sc->jme_cdata.jme_ssb_tag, sc->jme_cdata.jme_ssb_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}