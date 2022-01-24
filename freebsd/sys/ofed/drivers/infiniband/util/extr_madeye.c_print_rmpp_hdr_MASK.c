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
struct ib_rmpp_hdr {int rmpp_type; int /*<<< orphan*/  paylen_newwin; int /*<<< orphan*/  seg_num; int /*<<< orphan*/  rmpp_status; int /*<<< orphan*/  rmpp_version; } ;

/* Variables and functions */
#define  IB_MGMT_RMPP_TYPE_ACK 129 
#define  IB_MGMT_RMPP_TYPE_DATA 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct ib_rmpp_hdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct ib_rmpp_hdr*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 

__attribute__((used)) static void FUNC6(struct ib_rmpp_hdr *rmpp_hdr)
{
	FUNC5("RMPP version...0x%01x\n", rmpp_hdr->rmpp_version);
	FUNC5("RMPP type......0x%01x (%s)\n", rmpp_hdr->rmpp_type,
	       FUNC2(rmpp_hdr->rmpp_type));
	FUNC5("RMPP RRespTime.0x%01x\n", FUNC4(rmpp_hdr));
	FUNC5("RMPP flags.....0x%01x (%s)\n", FUNC3(rmpp_hdr),
	       FUNC1(FUNC3(rmpp_hdr)));
	FUNC5("RMPP status....0x%01x\n", rmpp_hdr->rmpp_status);
	FUNC5("Seg number.....0x%04x\n", FUNC0(rmpp_hdr->seg_num));
	switch (rmpp_hdr->rmpp_type) {
	case IB_MGMT_RMPP_TYPE_DATA:
		FUNC5("Payload len....0x%04x\n",
		       FUNC0(rmpp_hdr->paylen_newwin));
		break;
	case IB_MGMT_RMPP_TYPE_ACK:
		FUNC5("New window.....0x%04x\n",
		       FUNC0(rmpp_hdr->paylen_newwin));
		break;
	default:
		FUNC5("Data 2.........0x%04x\n",
		       FUNC0(rmpp_hdr->paylen_newwin));
		break;
	}
}