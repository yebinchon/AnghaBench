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
struct TYPE_4__ {scalar_t__ payload_size; } ;
struct vmci_delayed_datagram_info {TYPE_2__ msg; TYPE_1__* entry; } ;
struct TYPE_3__ {int /*<<< orphan*/  resource; int /*<<< orphan*/  client_data; int /*<<< orphan*/  (* recv_cb ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct vmci_delayed_datagram_info*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(void *data)
{
	struct vmci_delayed_datagram_info *dg_info;

	dg_info = (struct vmci_delayed_datagram_info *)data;

	FUNC0(data);

	dg_info->entry->recv_cb(dg_info->entry->client_data, &dg_info->msg);

	FUNC3(&dg_info->entry->resource);

	FUNC2(dg_info, sizeof(*dg_info) +
	    (size_t)dg_info->msg.payload_size);
}