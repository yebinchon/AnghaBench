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
struct TYPE_2__ {int /*<<< orphan*/  age_smb_block_map; int /*<<< orphan*/  age_smb_block_tag; } ;
struct age_ring_data {int /*<<< orphan*/  age_smb_block; } ;
struct age_softc {TYPE_1__ age_cdata; struct age_ring_data age_rdata; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct age_softc*) ; 
 int /*<<< orphan*/  AGE_SMB_BLOCK_SZ ; 
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct age_softc *sc)
{
	struct age_ring_data *rd;

	FUNC0(sc);

	rd = &sc->age_rdata;
	FUNC2(rd->age_smb_block, AGE_SMB_BLOCK_SZ);
	FUNC1(sc->age_cdata.age_smb_block_tag,
	    sc->age_cdata.age_smb_block_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
}