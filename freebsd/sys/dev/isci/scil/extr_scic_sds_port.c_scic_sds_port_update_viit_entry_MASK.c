#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {unsigned long physical_port_index; } ;
struct TYPE_7__ {unsigned long high; unsigned long low; } ;
typedef  TYPE_1__ SCI_SAS_ADDRESS_T ;
typedef  TYPE_2__ SCIC_SDS_PORT_T ;

/* Variables and functions */
 unsigned long SCU_VIIT_ENTRY_ID_VIIT ; 
 unsigned long SCU_VIIT_ENTRY_LPVIE_SHIFT ; 
 unsigned long SCU_VIIT_IPPT_INITIATOR ; 
 unsigned long SCU_VIIT_STATUS_ALL_VALID ; 
 int /*<<< orphan*/  initiator_sas_address_hi ; 
 int /*<<< orphan*/  initiator_sas_address_lo ; 
 int /*<<< orphan*/  reserved ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  status ; 

void FUNC2(
   SCIC_SDS_PORT_T *this_port
)
{
   SCI_SAS_ADDRESS_T sas_address;

   FUNC0(this_port, &sas_address);

   FUNC1(
      this_port, initiator_sas_address_hi, sas_address.high);

   FUNC1(
      this_port, initiator_sas_address_lo, sas_address.low);

   // This value get cleared just in case its not already cleared
   FUNC1(
      this_port, reserved, 0);


   // We are required to update the status register last
   FUNC1(
      this_port, status, (
           SCU_VIIT_ENTRY_ID_VIIT
         | SCU_VIIT_IPPT_INITIATOR
         | ((1UL << this_port->physical_port_index) << SCU_VIIT_ENTRY_LPVIE_SHIFT)
         | SCU_VIIT_STATUS_ALL_VALID
         )
   );
}