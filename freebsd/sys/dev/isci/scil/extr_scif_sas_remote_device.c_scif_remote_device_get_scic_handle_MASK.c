#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ core_object; } ;
typedef  scalar_t__ SCI_REMOTE_DEVICE_HANDLE_T ;
typedef  TYPE_1__ SCIF_SAS_REMOTE_DEVICE_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_REMOTE_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SCI_INVALID_HANDLE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

SCI_REMOTE_DEVICE_HANDLE_T FUNC2(
   SCI_REMOTE_DEVICE_HANDLE_T  scif_remote_device
)
{
   SCIF_SAS_REMOTE_DEVICE_T * fw_device = (SCIF_SAS_REMOTE_DEVICE_T*)
                                          scif_remote_device;

   if ( (fw_device == NULL) || (fw_device->core_object == SCI_INVALID_HANDLE) )
      return SCI_INVALID_HANDLE;

   FUNC0((
      FUNC1(fw_device),
      SCIF_LOG_OBJECT_REMOTE_DEVICE,
      "RemoteDevice:0x%x no associated core device found\n",
      fw_device
   ));

   return fw_device->core_object;
}