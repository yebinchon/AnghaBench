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
struct mbuf {int dummy; } ;
struct label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct label*,struct label*) ; 
 struct label* FUNC1 (struct mbuf*) ; 
 scalar_t__ mac_policy_count ; 
 int /*<<< orphan*/  mbuf_copy_label ; 

void
FUNC2(struct mbuf *m_from, struct mbuf *m_to)
{
	struct label *src_label, *dest_label;

	if (mac_policy_count == 0)
		return;

	src_label = FUNC1(m_from);
	dest_label = FUNC1(m_to);

	FUNC0(mbuf_copy_label, src_label, dest_label);
}