#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* if_shared_ctx_t ;
typedef  TYPE_2__* if_pseudo_t ;
struct TYPE_9__ {int /*<<< orphan*/ * ip_ifc; int /*<<< orphan*/ * ip_lladdr_tag; int /*<<< orphan*/ * ip_detach_tag; int /*<<< orphan*/ * ip_dc; TYPE_1__* ip_sctx; } ;
struct TYPE_8__ {char* isc_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVENTHANDLER_PRI_ANY ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IFC_NOGROUP ; 
 int /*<<< orphan*/  M_IFLIB ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  iflib_clone_create ; 
 int /*<<< orphan*/  iflib_clone_destroy ; 
 int /*<<< orphan*/  iflib_ifdetach ; 
 int /*<<< orphan*/  iflib_iflladdr ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC8 (char*) ; 
 int /*<<< orphan*/  iflladdr_event ; 
 int /*<<< orphan*/  ifnet_departure_event ; 
 TYPE_2__* FUNC9 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

if_pseudo_t
FUNC11(if_shared_ctx_t sctx)
{
	if_pseudo_t ip;

	if (sctx->isc_name == NULL) {
		FUNC10("iflib_clone_register failed - shared_ctx needs to have a device name\n");
		return (NULL);
	}
	if (FUNC8(sctx->isc_name) != NULL) {
		FUNC10("iflib_clone_register failed - shared_ctx %s alread registered\n",
			   sctx->isc_name);
		return (NULL);
	}
	ip = FUNC9(sizeof(*ip), M_IFLIB, M_WAITOK|M_ZERO);
	ip->ip_sctx = sctx;
	ip->ip_dc = FUNC2(sctx->isc_name);
	if (ip->ip_dc == NULL)
		goto fail_clone;
	/* XXX --- we can handle clone_advanced later */
	ip->ip_ifc  = FUNC5(sctx->isc_name, iflib_clone_create, iflib_clone_destroy, 0);
	if (ip->ip_ifc == NULL) {
		FUNC10("clone_simple failed -- cloned %s  devices will not be available\n", sctx->isc_name);
		goto fail_clone;
	}
	FUNC6(ip->ip_ifc, IFC_NOGROUP);
	ip->ip_lladdr_tag = FUNC1(iflladdr_event,
											 iflib_iflladdr, NULL, EVENTHANDLER_PRI_ANY);
	if (ip->ip_lladdr_tag == NULL)
		goto fail_addr;
	ip->ip_detach_tag = FUNC1(ifnet_departure_event,
											 iflib_ifdetach, NULL, EVENTHANDLER_PRI_ANY);

	if (ip->ip_detach_tag == NULL)
		goto fail_depart;

	FUNC7(ip);
	return (ip);
 fail_depart:
	FUNC0(iflladdr_event, ip->ip_lladdr_tag);
 fail_addr:
	FUNC4(ip->ip_ifc);
 fail_clone:
	FUNC3(ip, M_IFLIB);
	return (NULL);
}