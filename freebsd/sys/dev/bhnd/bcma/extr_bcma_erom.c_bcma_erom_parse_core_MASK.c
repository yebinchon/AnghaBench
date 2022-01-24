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
typedef  scalar_t__ uint32_t ;
struct bcma_erom_core {void* num_swrap; void* num_mwrap; void* num_dport; void* num_mport; void* rev; void* device; void* vendor; } ;
struct bcma_erom {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ BCMA_EROM_TABLE_EOF ; 
 int /*<<< orphan*/  CORE ; 
 int /*<<< orphan*/  COREA_DESIGNER ; 
 int /*<<< orphan*/  COREA_ID ; 
 int /*<<< orphan*/  COREB_NUM_DP ; 
 int /*<<< orphan*/  COREB_NUM_MP ; 
 int /*<<< orphan*/  COREB_NUM_WMP ; 
 int /*<<< orphan*/  COREB_NUM_WSP ; 
 int /*<<< orphan*/  COREB_REV ; 
 int EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  FUNC2 (struct bcma_erom*,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int FUNC4 (struct bcma_erom*,scalar_t__*) ; 

__attribute__((used)) static int
FUNC5(struct bcma_erom *erom, struct bcma_erom_core *core)
{
	uint32_t	entry;
	int		error;

	/* Parse CoreDescA */
	if ((error = FUNC4(erom, &entry)))
		return (error);
	
	/* Handle EOF */
	if (entry == BCMA_EROM_TABLE_EOF)
		return (ENOENT);
	
	if (!FUNC0(entry, CORE)) {
		FUNC2(erom, "Unexpected EROM entry 0x%x (type=%s)\n",
                   entry, FUNC3(entry));
		
		return (EINVAL);
	}

	core->vendor = FUNC1(entry, COREA_DESIGNER);
	core->device = FUNC1(entry, COREA_ID);
	
	/* Parse CoreDescB */
	if ((error = FUNC4(erom, &entry)))
		return (error);

	if (!FUNC0(entry, CORE)) {
		return (EINVAL);
	}

	core->rev = FUNC1(entry, COREB_REV);
	core->num_mport = FUNC1(entry, COREB_NUM_MP);
	core->num_dport = FUNC1(entry, COREB_NUM_DP);
	core->num_mwrap = FUNC1(entry, COREB_NUM_WMP);
	core->num_swrap = FUNC1(entry, COREB_NUM_WSP);

	return (0);
}