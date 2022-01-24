#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  High; int /*<<< orphan*/  Low; } ;
struct TYPE_7__ {int /*<<< orphan*/  High; int /*<<< orphan*/  Low; } ;
struct TYPE_6__ {int /*<<< orphan*/  High; int /*<<< orphan*/  Low; } ;
struct TYPE_5__ {int /*<<< orphan*/  High; int /*<<< orphan*/  Low; } ;
typedef  int /*<<< orphan*/  CONFIG_PAGE_FC_PORT_0 ;

/* Variables and functions */
 int /*<<< orphan*/  CurrentSpeed ; 
 int /*<<< orphan*/  DiscoveredPortsCount ; 
 TYPE_4__ FabricWWNN ; 
 TYPE_3__ FabricWWPN ; 
 int /*<<< orphan*/  Flags ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MaxFrameSize ; 
 int /*<<< orphan*/  MaxInitiators ; 
 int /*<<< orphan*/  PortIdentifier ; 
 int /*<<< orphan*/  SupportedServiceClass ; 
 int /*<<< orphan*/  SupportedSpeeds ; 
 TYPE_2__ WWNN ; 
 TYPE_1__ WWPN ; 

void
FUNC1(CONFIG_PAGE_FC_PORT_0 *fp0)
{

	FUNC0(fp0, Flags);
	FUNC0(fp0, PortIdentifier);
	FUNC0(fp0, WWNN.Low);
	FUNC0(fp0, WWNN.High);
	FUNC0(fp0, WWPN.Low);
	FUNC0(fp0, WWPN.High);
	FUNC0(fp0, SupportedServiceClass);
	FUNC0(fp0, SupportedSpeeds);
	FUNC0(fp0, CurrentSpeed);
	FUNC0(fp0, MaxFrameSize);
	FUNC0(fp0, FabricWWNN.Low);
	FUNC0(fp0, FabricWWNN.High);
	FUNC0(fp0, FabricWWPN.Low);
	FUNC0(fp0, FabricWWPN.High);
	FUNC0(fp0, DiscoveredPortsCount);
	FUNC0(fp0, MaxInitiators);
}