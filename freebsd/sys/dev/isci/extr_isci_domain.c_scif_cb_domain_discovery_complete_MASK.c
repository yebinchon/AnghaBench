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
struct ISCI_DOMAIN {int dummy; } ;
struct ISCI_CONTROLLER {int dummy; } ;
typedef  scalar_t__ SCI_STATUS ;
typedef  int /*<<< orphan*/  SCI_DOMAIN_HANDLE_T ;
typedef  int /*<<< orphan*/  SCI_CONTROLLER_HANDLE_T ;

/* Variables and functions */
 scalar_t__ SCI_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct ISCI_CONTROLLER*,struct ISCI_DOMAIN*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3(SCI_CONTROLLER_HANDLE_T controller,
    SCI_DOMAIN_HANDLE_T domain, SCI_STATUS completion_status)
{

	if(completion_status != SCI_SUCCESS)
		FUNC1(0, "ISCI",
		    "scif_cb_domain_discovery_complete status = 0x%x\n",
		    completion_status);

	FUNC0(
	    (struct ISCI_CONTROLLER *)FUNC2(controller),
	    (struct ISCI_DOMAIN *) FUNC2(domain));
}