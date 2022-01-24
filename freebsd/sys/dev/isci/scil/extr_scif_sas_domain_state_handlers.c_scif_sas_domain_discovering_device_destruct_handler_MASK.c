#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  remote_device_list; } ;
struct TYPE_5__ {int /*<<< orphan*/  state_machine; } ;
typedef  int /*<<< orphan*/  SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_BASE_REMOTE_DEVICE_T ;
typedef  TYPE_1__ SCI_BASE_DOMAIN_T ;
typedef  TYPE_2__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int /*<<< orphan*/  SCIF_LOG_OBJECT_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
SCI_STATUS FUNC4(
   SCI_BASE_DOMAIN_T        * domain,
   SCI_BASE_REMOTE_DEVICE_T * remote_device
)
{
   SCIF_SAS_DOMAIN_T * fw_domain = (SCIF_SAS_DOMAIN_T *)domain;

   FUNC0((
      FUNC2(domain),
      SCIF_LOG_OBJECT_DOMAIN,
      "Domain:0x%x Device:0x%x State:0x%x device destruct in domain DISCOVERING state\n",
      domain, remote_device,
      FUNC3(&domain->state_machine)
   ));

   //remove the remote device from domain's remote_device_list
   FUNC1(
      &(fw_domain->remote_device_list),
      remote_device
   );

   return SCI_SUCCESS;
}