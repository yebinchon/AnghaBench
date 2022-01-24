#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int csum_flags; int /*<<< orphan*/  tags; int /*<<< orphan*/  snd_tag; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_pktdat; int /*<<< orphan*/  m_data; } ;

/* Variables and functions */
 int CSUM_SND_TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 int M_COPYFLAGS ; 
 int M_EXT ; 
 int M_NOMAP ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct mbuf*,struct mbuf const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int /*<<< orphan*/ *) ; 

int
FUNC8(struct mbuf *to, const struct mbuf *from, int how)
{

#if 0
	/*
	 * The mbuf allocator only initializes the pkthdr
	 * when the mbuf is allocated with m_gethdr(). Many users
	 * (e.g. m_copy*, m_prepend) use m_get() and then
	 * smash the pkthdr as needed causing these
	 * assertions to trip.  For now just disable them.
	 */
	M_ASSERTPKTHDR(to);
	/* Note: with MAC, this may not be a good assertion. */
	KASSERT(SLIST_EMPTY(&to->m_pkthdr.tags), ("m_dup_pkthdr: to has tags"));
#endif
	FUNC1(how);
#ifdef MAC
	if (to->m_flags & M_PKTHDR)
		m_tag_delete_chain(to, NULL);
#endif
	to->m_flags = (from->m_flags & M_COPYFLAGS) |
	    (to->m_flags & (M_EXT | M_NOMAP));
	if ((to->m_flags & M_EXT) == 0)
		to->m_data = to->m_pktdat;
	to->m_pkthdr = from->m_pkthdr;
	if (from->m_pkthdr.csum_flags & CSUM_SND_TAG)
		FUNC5(from->m_pkthdr.snd_tag);
	FUNC4(&to->m_pkthdr.tags);
	return (FUNC6(to, from, how));
}