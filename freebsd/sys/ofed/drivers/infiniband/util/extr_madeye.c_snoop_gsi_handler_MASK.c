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
struct ib_rmpp_mad {int /*<<< orphan*/  rmpp_hdr; } ;
struct ib_mad_send_wc {int dummy; } ;
struct ib_mad_send_buf {struct ib_mad_hdr* mad; } ;
struct ib_mad_hdr {scalar_t__ mgmt_class; int /*<<< orphan*/  attr_id; } ;
struct ib_mad_agent {int dummy; } ;

/* Variables and functions */
 scalar_t__ attr_id ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gmp ; 
 scalar_t__ FUNC1 (struct ib_mad_hdr*) ; 
 scalar_t__ mgmt_class ; 
 int /*<<< orphan*/  FUNC2 (struct ib_mad_hdr*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct ib_mad_agent *mad_agent,
			      struct ib_mad_send_buf *send_buf,
			      struct ib_mad_send_wc *mad_send_wc)
{
	struct ib_mad_hdr *hdr = send_buf->mad;

	if (!gmp && hdr->mgmt_class != mgmt_class)
		return;
	if (attr_id && FUNC0(hdr->attr_id) != attr_id)
		return;

	FUNC4("Madeye:sent GMP\n");
	FUNC2(hdr);

	if (FUNC1(hdr))
		FUNC3(&((struct ib_rmpp_mad *) hdr)->rmpp_hdr);
}