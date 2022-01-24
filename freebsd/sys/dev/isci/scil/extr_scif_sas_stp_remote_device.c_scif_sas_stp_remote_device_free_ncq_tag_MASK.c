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
struct TYPE_3__ {int s_active; } ;
struct TYPE_4__ {TYPE_1__ stp_device; } ;
struct SCIF_SAS_REMOTE_DEVICE {TYPE_2__ protocol_device; } ;
typedef  int U8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int SCIF_LOG_OBJECT_IO_REQUEST ; 
 int SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (struct SCIF_SAS_REMOTE_DEVICE*) ; 

void FUNC2(
   struct SCIF_SAS_REMOTE_DEVICE * fw_device,
   U8                              ncq_tag
)
{
   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE | SCIF_LOG_OBJECT_IO_REQUEST,
      "RemoteDevice:0x%x NcqTag:0x%x freeing NCQ TAG\n",
      fw_device, ncq_tag
   ));

   fw_device->protocol_device.stp_device.s_active &= ~(1 << ncq_tag);
}