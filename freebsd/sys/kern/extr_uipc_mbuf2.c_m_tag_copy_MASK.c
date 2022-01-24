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
struct m_tag {scalar_t__ m_tag_id; int /*<<< orphan*/  m_tag_len; int /*<<< orphan*/  m_tag_cookie; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct m_tag*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ PACKET_TAG_MACLABEL ; 
 int /*<<< orphan*/  FUNC2 (struct m_tag*,struct m_tag*,int /*<<< orphan*/ ) ; 
 struct m_tag* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct m_tag*) ; 
 int /*<<< orphan*/  FUNC5 (struct m_tag*,struct m_tag*) ; 
 scalar_t__ FUNC6 (struct m_tag*,int) ; 

struct m_tag *
FUNC7(struct m_tag *t, int how)
{
	struct m_tag *p;

	FUNC1(how);
	FUNC0(t, ("m_tag_copy: null tag"));
	p = FUNC3(t->m_tag_cookie, t->m_tag_id, t->m_tag_len, how);
	if (p == NULL)
		return (NULL);
#ifdef MAC
	/*
	 * XXXMAC: we should probably pass off the initialization, and
	 * copying here?  can we hide that PACKET_TAG_MACLABEL is
	 * special from the mbuf code?
	 */
	if (t->m_tag_id == PACKET_TAG_MACLABEL) {
		if (mac_mbuf_tag_init(p, how) != 0) {
			m_tag_free(p);
			return (NULL);
		}
		mac_mbuf_tag_copy(t, p);
	} else
#endif
		FUNC2(t + 1, p + 1, t->m_tag_len); /* Copy the data */
	return p;
}