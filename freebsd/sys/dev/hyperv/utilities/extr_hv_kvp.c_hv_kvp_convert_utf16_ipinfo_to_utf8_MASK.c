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
typedef  int /*<<< orphan*/  uint16_t ;
struct vmbus_channel {int dummy; } ;
struct TYPE_6__ {scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; int /*<<< orphan*/  dhcp_enabled; int /*<<< orphan*/  addr_family; scalar_t__ adapter_id; scalar_t__ ip_addr; } ;
struct TYPE_7__ {TYPE_2__ kvp_ip_val; } ;
struct TYPE_5__ {int /*<<< orphan*/  operation; } ;
struct hv_kvp_msg {TYPE_3__ body; TYPE_1__ kvp_hdr; } ;
struct TYPE_8__ {scalar_t__ dns_addr; scalar_t__ gate_way; scalar_t__ sub_net; int /*<<< orphan*/  dhcp_enabled; int /*<<< orphan*/  addr_family; scalar_t__ adapter_id; scalar_t__ ip_addr; } ;
struct hv_kvp_ip_msg {TYPE_4__ kvp_ip_val; int /*<<< orphan*/  operation; } ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int HYPERV_GUID_STRLEN ; 
 int /*<<< orphan*/  MAX_ADAPTER_ID_SIZE ; 
 int /*<<< orphan*/  MAX_GATEWAY_SIZE ; 
 int /*<<< orphan*/  MAX_IP_ADDR_SIZE ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct vmbus_channel*) ; 
 struct vmbus_channel* FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct hv_kvp_ip_msg *host_ip_msg,
				    struct hv_kvp_msg *umsg)
{
	int err_ip, err_subnet, err_gway, err_dns, err_adap;
	int UNUSED_FLAG = 1;
	device_t *devs;
	int devcnt;

	/* IP Address */
	FUNC7((char *)umsg->body.kvp_ip_val.ip_addr,
	    MAX_IP_ADDR_SIZE,
	    (uint16_t *)host_ip_msg->kvp_ip_val.ip_addr,
	    MAX_IP_ADDR_SIZE,
	    UNUSED_FLAG,
	    &err_ip);

	/* Adapter ID : GUID */
	FUNC7((char *)umsg->body.kvp_ip_val.adapter_id,
	    MAX_ADAPTER_ID_SIZE,
	    (uint16_t *)host_ip_msg->kvp_ip_val.adapter_id,
	    MAX_ADAPTER_ID_SIZE,
	    UNUSED_FLAG,
	    &err_adap);

	if (FUNC1(FUNC0("hn"), &devs, &devcnt) == 0) {
		for (devcnt = devcnt - 1; devcnt >= 0; devcnt--) {
			device_t dev = devs[devcnt];
			struct vmbus_channel *chan;
			char buf[HYPERV_GUID_STRLEN];
			int n;

			chan = FUNC9(dev);
			n = FUNC4(FUNC8(chan), buf,
			    sizeof(buf));

			/*
			 * The string in the 'kvp_ip_val.adapter_id' has
			 * braces around the GUID; skip the leading brace
			 * in 'kvp_ip_val.adapter_id'.
			 */
			if (FUNC6(buf,
			    ((char *)&umsg->body.kvp_ip_val.adapter_id) + 1,
			    n) == 0) {
				FUNC5((char *)umsg->body.kvp_ip_val.adapter_id,
				    FUNC2(dev), MAX_ADAPTER_ID_SIZE);
				break;
			}
		}
		FUNC3(devs, M_TEMP);
	}

	/* Address Family , DHCP , SUBNET, Gateway, DNS */
	umsg->kvp_hdr.operation = host_ip_msg->operation;
	umsg->body.kvp_ip_val.addr_family = host_ip_msg->kvp_ip_val.addr_family;
	umsg->body.kvp_ip_val.dhcp_enabled = host_ip_msg->kvp_ip_val.dhcp_enabled;
	FUNC7((char *)umsg->body.kvp_ip_val.sub_net, MAX_IP_ADDR_SIZE,
	    (uint16_t *)host_ip_msg->kvp_ip_val.sub_net,
	    MAX_IP_ADDR_SIZE,
	    UNUSED_FLAG,
	    &err_subnet);

	FUNC7((char *)umsg->body.kvp_ip_val.gate_way, MAX_GATEWAY_SIZE,
	    (uint16_t *)host_ip_msg->kvp_ip_val.gate_way,
	    MAX_GATEWAY_SIZE,
	    UNUSED_FLAG,
	    &err_gway);

	FUNC7((char *)umsg->body.kvp_ip_val.dns_addr, MAX_IP_ADDR_SIZE,
	    (uint16_t *)host_ip_msg->kvp_ip_val.dns_addr,
	    MAX_IP_ADDR_SIZE,
	    UNUSED_FLAG,
	    &err_dns);

	return (err_ip | err_subnet | err_gway | err_dns | err_adap);
}