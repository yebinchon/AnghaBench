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
struct sysctl_oid {int dummy; } ;
struct sysctl_ctx_list {int dummy; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int CTLFLAG_RD ; 
 int CTLTYPE_INT ; 
 int CTLTYPE_STRING ; 
 int /*<<< orphan*/  OID_AUTO ; 
 int /*<<< orphan*/  FUNC0 (struct sysctl_ctx_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct sysctl_oid*) ; 
 int /*<<< orphan*/  XENBUS_IVAR_NODE ; 
 int /*<<< orphan*/  XENBUS_IVAR_OTHEREND_ID ; 
 int /*<<< orphan*/  XENBUS_IVAR_OTHEREND_PATH ; 
 int /*<<< orphan*/  XENBUS_IVAR_STATE ; 
 int /*<<< orphan*/  XENBUS_IVAR_TYPE ; 
 struct sysctl_ctx_list* FUNC2 (int /*<<< orphan*/ ) ; 
 struct sysctl_oid* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  xenbusb_device_sysctl_handler ; 

__attribute__((used)) static void
FUNC4(device_t dev)
{
	struct sysctl_ctx_list *ctx;
	struct sysctl_oid      *tree;

	ctx  = FUNC2(dev);
	tree = FUNC3(dev);

        FUNC0(ctx,
			FUNC1(tree),
			OID_AUTO,
			"xenstore_path",
			CTLTYPE_STRING | CTLFLAG_RD,
			dev,
			XENBUS_IVAR_NODE,
			xenbusb_device_sysctl_handler,
			"A",
			"XenStore path to device");

        FUNC0(ctx,
			FUNC1(tree),
			OID_AUTO,
			"xenbus_dev_type",
			CTLTYPE_STRING | CTLFLAG_RD,
			dev,
			XENBUS_IVAR_TYPE,
			xenbusb_device_sysctl_handler,
			"A",
			"XenBus device type");

        FUNC0(ctx,
			FUNC1(tree),
			OID_AUTO,
			"xenbus_connection_state",
			CTLTYPE_STRING | CTLFLAG_RD,
			dev,
			XENBUS_IVAR_STATE,
			xenbusb_device_sysctl_handler,
			"A",
			"XenBus state of peer connection");

        FUNC0(ctx,
			FUNC1(tree),
			OID_AUTO,
			"xenbus_peer_domid",
			CTLTYPE_INT | CTLFLAG_RD,
			dev,
			XENBUS_IVAR_OTHEREND_ID,
			xenbusb_device_sysctl_handler,
			"I",
			"Xen domain ID of peer");

        FUNC0(ctx,
			FUNC1(tree),
			OID_AUTO,
			"xenstore_peer_path",
			CTLTYPE_STRING | CTLFLAG_RD,
			dev,
			XENBUS_IVAR_OTHEREND_PATH,
			xenbusb_device_sysctl_handler,
			"A",
			"XenStore path to peer device");
}