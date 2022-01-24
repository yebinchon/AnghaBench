#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct ib_vendor_mad {int /*<<< orphan*/ * data; int /*<<< orphan*/ * oui; } ;
struct ib_sa_mad {int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {scalar_t__ rmpp_type; } ;
struct ib_rmpp_mad {TYPE_3__ rmpp_hdr; } ;
struct TYPE_5__ {TYPE_1__* mad; } ;
struct ib_mad_recv_wc {TYPE_2__ recv_buf; } ;
struct ib_mad_hdr {scalar_t__ mgmt_class; int /*<<< orphan*/  attr_id; } ;
struct ib_mad_agent {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * data; struct ib_mad_hdr mad_hdr; } ;

/* Variables and functions */
 scalar_t__ IB_MGMT_CLASS_SUBN_ADM ; 
 int IB_MGMT_MAD_DATA ; 
 scalar_t__ IB_MGMT_RMPP_TYPE_DATA ; 
 int IB_MGMT_SA_DATA ; 
 int IB_MGMT_VENDOR_DATA ; 
 scalar_t__ attr_id ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ data ; 
 int /*<<< orphan*/  gmp ; 
 scalar_t__ FUNC1 (struct ib_mad_hdr*) ; 
 scalar_t__ mgmt_class ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(struct ib_mad_agent *mad_agent,
			     struct ib_mad_recv_wc *mad_recv_wc)
{
	struct ib_mad_hdr *hdr = &mad_recv_wc->recv_buf.mad->mad_hdr;
	struct ib_rmpp_mad *mad = NULL;
	struct ib_sa_mad *sa_mad;
	struct ib_vendor_mad *vendor_mad;
	u8 *mad_data;
	int i, j;

	if (!gmp && hdr->mgmt_class != mgmt_class)
		return;
	if (attr_id && FUNC0(mad_recv_wc->recv_buf.mad->mad_hdr.attr_id) != attr_id)
		return;

	FUNC4("Madeye:recv GMP\n");
	FUNC2(hdr);

	if (FUNC1(hdr)) {
		mad = (struct ib_rmpp_mad *) hdr;
		FUNC3(&mad->rmpp_hdr);
	}

	if (data) {
		if (hdr->mgmt_class == IB_MGMT_CLASS_SUBN_ADM) {
			j = IB_MGMT_SA_DATA;
			/* Display SA header */
			if (FUNC1(hdr) &&
			    mad->rmpp_hdr.rmpp_type != IB_MGMT_RMPP_TYPE_DATA)
				return;
			sa_mad = (struct ib_sa_mad *)
				 &mad_recv_wc->recv_buf.mad;
			mad_data = sa_mad->data;
		} else {
			if (FUNC1(hdr)) {
				j = IB_MGMT_VENDOR_DATA;
				/* Display OUI */
				vendor_mad = (struct ib_vendor_mad *)
					     &mad_recv_wc->recv_buf.mad;
				FUNC4("Vendor OUI......%01x %01x %01x\n",
					vendor_mad->oui[0],
					vendor_mad->oui[1],
					vendor_mad->oui[2]);
				mad_data = vendor_mad->data;
			} else {
				j = IB_MGMT_MAD_DATA;
				mad_data = mad_recv_wc->recv_buf.mad->data;
			}
		}
		for (i = 0; i < j; i++) {
			if (i % 16 == 0)
				FUNC4("\nData...........");
			FUNC4("%01x ", mad_data[i]);
		}
		FUNC4("\n");
	}
}