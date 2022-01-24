#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  display_name; } ;
typedef  TYPE_1__ ocs_io_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC4(ocs_io_t *io)
{
	FUNC3(io, "freeing io 0x%p %s\n", io, io->display_name);
	FUNC0(FUNC2(&io->ref) > 0);
	FUNC1(&io->ref); /* ocs_ref_get(): ocs_scsi_io_alloc() */
}