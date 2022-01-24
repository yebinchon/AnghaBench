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
typedef  int /*<<< orphan*/  uint32_t ;
struct bcma_erom_mport {void* port_num; void* port_vid; } ;
struct bcma_erom {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  MPORT ; 
 int /*<<< orphan*/  MPORT_ID ; 
 int /*<<< orphan*/  MPORT_NUM ; 
 int FUNC2 (struct bcma_erom*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct bcma_erom *erom, struct bcma_erom_mport *mport)
{
	uint32_t	entry;
	int		error;

	/* Parse the master port descriptor */
	if ((error = FUNC2(erom, &entry)))
		return (error);
	
	if (!FUNC0(entry, MPORT))
		return (EINVAL);

	mport->port_vid = FUNC1(entry, MPORT_ID);
	mport->port_num = FUNC1(entry, MPORT_NUM);

	return (0);
}