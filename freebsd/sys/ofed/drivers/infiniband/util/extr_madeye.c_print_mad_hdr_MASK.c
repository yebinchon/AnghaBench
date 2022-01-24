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
struct ib_mad_hdr {unsigned long long base_version; scalar_t__ mgmt_class; unsigned long long class_version; int /*<<< orphan*/  attr_mod; scalar_t__ attr_id; int /*<<< orphan*/  tid; scalar_t__ class_specific; scalar_t__ status; int /*<<< orphan*/  method; } ;

/* Variables and functions */
 scalar_t__ IB_MGMT_CLASS_SUBN_ADM ; 
 unsigned long long FUNC0 (scalar_t__) ; 
 unsigned long long FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long long) ; 
 int /*<<< orphan*/  FUNC7 (char*,unsigned long long,...) ; 

__attribute__((used)) static void FUNC8(struct ib_mad_hdr *mad_hdr)
{
	FUNC7("MAD version....0x%01x\n", mad_hdr->base_version);
	FUNC7("Class..........0x%01x (%s)\n", mad_hdr->mgmt_class,
	       FUNC3(mad_hdr->mgmt_class));
	FUNC7("Class version..0x%01x\n", mad_hdr->class_version);
	FUNC7("Method.........0x%01x (%s)\n", mad_hdr->method,
	       FUNC4(mad_hdr->mgmt_class, mad_hdr->method));
	FUNC7("Status.........0x%02x\n", FUNC0(mad_hdr->status));
	if (mad_hdr->status)
		FUNC6(FUNC0(mad_hdr->status));
	FUNC7("Class specific.0x%02x\n", FUNC0(mad_hdr->class_specific));
	FUNC7("Trans ID.......0x%llx\n", 
		(unsigned long long)FUNC2(mad_hdr->tid));
	if (mad_hdr->mgmt_class == IB_MGMT_CLASS_SUBN_ADM)
		FUNC7("Attr ID........0x%02x (%s)\n",
		       FUNC0(mad_hdr->attr_id),
		       FUNC5(FUNC0(mad_hdr->attr_id)));
	else
		FUNC7("Attr ID........0x%02x\n",
		       FUNC0(mad_hdr->attr_id));
	FUNC7("Attr modifier..0x%04x\n", FUNC1(mad_hdr->attr_mod));
}