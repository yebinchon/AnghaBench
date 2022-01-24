#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct ISCI_IO_REQUEST {TYPE_2__* ccb; } ;
struct TYPE_3__ {int /*<<< orphan*/  cdb_len; } ;
struct TYPE_4__ {TYPE_1__ csio; } ;

/* Variables and functions */

uint32_t
FUNC0(void * scif_user_io_request)
{
	struct ISCI_IO_REQUEST *isci_request =
	    (struct ISCI_IO_REQUEST *)scif_user_io_request;

	return (isci_request->ccb->csio.cdb_len);
}