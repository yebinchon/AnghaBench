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
typedef  int uint32_t ;
struct pvscsi_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PVSCSI_CMD_GET_MAX_TARGETS ; 
 int /*<<< orphan*/  PVSCSI_REG_OFFSET_COMMAND_STATUS ; 
 int FUNC0 (struct pvscsi_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pvscsi_softc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC2(struct pvscsi_softc *sc)
{
	uint32_t max_targets;

	FUNC1(sc, PVSCSI_CMD_GET_MAX_TARGETS, NULL, 0);

	max_targets = FUNC0(sc, PVSCSI_REG_OFFSET_COMMAND_STATUS);

	if (max_targets == ~0) {
		max_targets = 16;
	}

	return (max_targets);
}