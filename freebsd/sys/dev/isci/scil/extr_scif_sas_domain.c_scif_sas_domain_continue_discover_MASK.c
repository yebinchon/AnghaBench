#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ device_start_in_progress_count; } ;
typedef  TYPE_1__ SCIF_SAS_DOMAIN_T ;

/* Variables and functions */
 int SCIF_LOG_OBJECT_DOMAIN ; 
 int SCIF_LOG_OBJECT_DOMAIN_DISCOVERY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

void FUNC6(
   SCIF_SAS_DOMAIN_T * fw_domain
)
{
   FUNC0((
      FUNC1(fw_domain),
      SCIF_LOG_OBJECT_DOMAIN | SCIF_LOG_OBJECT_DOMAIN_DISCOVERY,
      "scif_sas_domain_continue_discover(0x%x) enter\n",
      fw_domain
   ));

   if ( fw_domain->device_start_in_progress_count == 0
       && !FUNC4(fw_domain) )
   {
      //domain scrub the remote device list to see if there is a need
      //to start smp discover on expander device. There may be no
      //need to start any smp discover.
      FUNC5(fw_domain);

      //In domain discovery timeout case, we cancel all
      //the smp activities, and terminate all the smp requests, then
      //this routine is called. But the smp request may not done
      //terminated. We want to guard the domain trasitting to READY
      //by checking outstanding smp request count. If there is outstanding
      //smp request, the domain will not transit to READY. Later when
      //the smp request is terminated at smp remote device, this routine
      //will be called then the domain will transit to READY state.
      if ( ! FUNC4(fw_domain)
          && FUNC3(fw_domain) == 0)
      {
         //before domain transit to READY state, domain has some clean up
         //work to do, such like update domain's remote devcie list.
         FUNC2(fw_domain);
      }
   }
}