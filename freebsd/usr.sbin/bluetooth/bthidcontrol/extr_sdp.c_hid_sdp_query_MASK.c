#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct hid_device {size_t control_psm; size_t interrupt_psm; int reconnect_initiate; int battery_power; int normally_connectable; int /*<<< orphan*/ * desc; void* version; void* product_id; void* vendor_id; int /*<<< orphan*/  bdaddr; int /*<<< orphan*/  name; } ;
typedef  size_t int32_t ;
typedef  void* int16_t ;
typedef  int /*<<< orphan*/  bdaddr_t ;
struct TYPE_6__ {scalar_t__ flags; int attr; size_t vlen; int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 scalar_t__ EINVAL ; 
 scalar_t__ ENOATTR ; 
 scalar_t__ ENOMEM ; 
 int HCI_DEVNAME_SIZE ; 
 int /*<<< orphan*/ * NG_HCI_BDADDR_ANY ; 
#define  SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS 132 
#define  SDP_ATTR_DEVICE_ID_SERVICE_PRODUCTID 131 
#define  SDP_ATTR_DEVICE_ID_SERVICE_VENDORID 130 
#define  SDP_ATTR_DEVICE_ID_SERVICE_VERSION 129 
 scalar_t__ SDP_ATTR_INVALID ; 
 scalar_t__ SDP_ATTR_OK ; 
#define  SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST 128 
 size_t SDP_DATA_UINT16 ; 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * attrs ; 
 int /*<<< orphan*/  attrs_devid ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 size_t FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 size_t FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int nattrs ; 
 size_t nvalues ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 scalar_t__ FUNC11 (void*) ; 
 scalar_t__ FUNC12 (void*,int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (void*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,size_t,TYPE_1__*) ; 
 int /*<<< orphan*/  service ; 
 int /*<<< orphan*/  service_devid ; 
 TYPE_1__* values ; 

__attribute__((used)) static int32_t
FUNC15(bdaddr_t const *local, struct hid_device *hd, int32_t *error)
{
	void			*ss = NULL;
	uint8_t			*hid_descriptor = NULL, *v;
	int32_t			 i, control_psm = -1, interrupt_psm = -1,
				 reconnect_initiate = -1,
				 normally_connectable = 0, battery_power = 0,
				 hid_descriptor_length = -1, type;
	int16_t 		 vendor_id = 0, product_id = 0, version = 0;
	bdaddr_t		 sdp_local;
	char			 devname[HCI_DEVNAME_SIZE];

	if (local == NULL)
		local = NG_HCI_BDADDR_ANY;
	if (hd == NULL)
		FUNC8(EINVAL);

	FUNC4();

	if ((ss = FUNC13(local, &hd->bdaddr)) == NULL)
		FUNC8(ENOMEM);
	if (FUNC11(ss) != 0)
		FUNC8(FUNC11(ss));
	if (FUNC14(ss, 1, &service, nattrs, attrs, nvalues, values) != 0)
                FUNC8(FUNC11(ss));

	for (i = 0; i < nvalues; i ++) {
		if (values[i].flags != SDP_ATTR_OK)
			continue;

		switch (values[i].attr) {
		case SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST:
			control_psm = FUNC7(&values[i]);
			break;

		case SDP_ATTR_ADDITIONAL_PROTOCOL_DESCRIPTOR_LISTS:
			interrupt_psm = FUNC7(&values[i]);
			break;

		case 0x0205: /* HIDReconnectInitiate */
			reconnect_initiate = FUNC5(&values[i]);
			break;

		case 0x0206: /* HIDDescriptorList */
			if (FUNC6(&values[i]) == 0) {
				hid_descriptor = values[i].value;
				hid_descriptor_length = values[i].vlen;
			}
			break;

		case 0x0209: /* HIDBatteryPower */
			battery_power = FUNC5(&values[i]);
			break;

		case 0x020d: /* HIDNormallyConnectable */
			normally_connectable = FUNC5(&values[i]);
			break;
		}
	}

	FUNC4();

	if (FUNC14(ss, 1, &service_devid, 1, &attrs_devid, nvalues, values) != 0)
                FUNC8(FUNC11(ss));

	/* Try extract HCI bdaddr from opened SDP session */
	if (FUNC12(ss, &sdp_local) != 0 ||
	    FUNC2(devname, &sdp_local) == 0)
		FUNC8(ENOATTR);

        FUNC10(ss);
        ss = NULL;

	/* If search is successful, scan through return vals */
	for (i = 0; i < 3; i ++ ) {
		if (values[i].flags == SDP_ATTR_INVALID )
			continue;

		/* Expecting tag + uint16_t on all 3 attributes */
		if (values[i].vlen != 3)
			continue;

		/* Make sure, we're reading a uint16_t */
		v = values[i].value;
		FUNC1(type, v);
		if (type != SDP_DATA_UINT16 )
			continue;

		switch (values[i].attr) {
			case SDP_ATTR_DEVICE_ID_SERVICE_VENDORID:
				FUNC0(vendor_id, v);
				break;
			case SDP_ATTR_DEVICE_ID_SERVICE_PRODUCTID:
				FUNC0(product_id, v);
				break;
			case SDP_ATTR_DEVICE_ID_SERVICE_VERSION:
				FUNC0(version, v);
				break;
			default:
				break;
		}
	}

	if (control_psm == -1 || interrupt_psm == -1 ||
	    reconnect_initiate == -1 ||
	    hid_descriptor == NULL || hid_descriptor_length == -1)
		FUNC8(ENOATTR);
	hd->name = FUNC3(devname, &hd->bdaddr);
	hd->vendor_id = vendor_id;
	hd->product_id = product_id;
	hd->version = version;
	hd->control_psm = control_psm;
	hd->interrupt_psm = interrupt_psm;
	hd->reconnect_initiate = reconnect_initiate? 1 : 0;
	hd->battery_power = battery_power? 1 : 0;
	hd->normally_connectable = normally_connectable? 1 : 0;
	hd->desc = FUNC9(hid_descriptor, hid_descriptor_length);
	if (hd->desc == NULL)
		FUNC8(ENOMEM);

	return (0);
}