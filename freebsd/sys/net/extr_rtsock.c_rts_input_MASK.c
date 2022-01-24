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
struct sockproto {unsigned short sp_protocol; int /*<<< orphan*/  sp_family; } ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  PACKET_TAG_RTSOCKFAM ; 
 int /*<<< orphan*/  PF_ROUTE ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,struct m_tag*) ; 
 struct m_tag* FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct sockproto*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_input_rts_cb ; 
 int /*<<< orphan*/  route_src ; 

__attribute__((used)) static void
FUNC3(struct mbuf *m)
{
	struct sockproto route_proto;
	unsigned short *family;
	struct m_tag *tag;

	route_proto.sp_family = PF_ROUTE;
	tag = FUNC1(m, PACKET_TAG_RTSOCKFAM, NULL);
	if (tag != NULL) {
		family = (unsigned short *)(tag + 1);
		route_proto.sp_protocol = *family;
		FUNC0(m, tag);
	} else
		route_proto.sp_protocol = 0;

	FUNC2(m, &route_proto, &route_src, raw_input_rts_cb);
}