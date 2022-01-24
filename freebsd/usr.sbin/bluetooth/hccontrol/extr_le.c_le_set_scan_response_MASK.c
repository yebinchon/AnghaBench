#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rp ;
struct TYPE_3__ {int status; } ;
typedef  TYPE_1__ ng_hci_le_set_scan_response_data_rp ;
struct TYPE_4__ {int scan_response_data_length; int /*<<< orphan*/  scan_response_data; } ;
typedef  TYPE_2__ ng_hci_le_set_scan_response_data_cp ;
typedef  int /*<<< orphan*/  cp ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int NG_HCI_ADVERTISING_DATA_SIZE ; 
 int /*<<< orphan*/  NG_HCI_OCF_LE_SET_SCAN_RESPONSE_DATA ; 
 int /*<<< orphan*/  NG_HCI_OGF_LE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int OK ; 
 int FUNC1 (int,int /*<<< orphan*/ ,void*,int,void*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int,char**,char*,int*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,int,int) ; 

__attribute__((used)) static int
FUNC6(int s, int argc, char *argv[])
{
	ng_hci_le_set_scan_response_data_cp cp;
	ng_hci_le_set_scan_response_data_rp rp;
	int n;
	int e;
	int len;
	char buf[NG_HCI_ADVERTISING_DATA_SIZE];

	len = sizeof(buf);
	FUNC4(argc, argv, buf, &len);
	FUNC3(cp.scan_response_data, 0, sizeof(cp.scan_response_data));
	cp.scan_response_data_length = len;
	FUNC2(cp.scan_response_data, buf, len);
	n = sizeof(rp);
	e = FUNC1(s, FUNC0(NG_HCI_OGF_LE,
			NG_HCI_OCF_LE_SET_SCAN_RESPONSE_DATA), 
			(void *)&cp, sizeof(cp), (void *)&rp, &n);
			
	FUNC5("SET SCAN RESPONSE %d %d %d\n", e, rp.status, n);

	return OK;
}