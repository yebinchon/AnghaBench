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
struct siftr_stats {int /*<<< orphan*/  nskip_out_malloc; int /*<<< orphan*/  nskip_in_malloc; int /*<<< orphan*/  nskip_out_dejavu; int /*<<< orphan*/  nskip_in_dejavu; } ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PACKET_COOKIE_SIFTR ; 
 int /*<<< orphan*/  PACKET_TAG_SIFTR ; 
 int PFIL_IN ; 
 struct m_tag* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct m_tag*) ; 

__attribute__((used)) static inline int
FUNC3(struct mbuf *m, int dir, struct siftr_stats *ss)
{
	if (FUNC1(m, PACKET_COOKIE_SIFTR, PACKET_TAG_SIFTR, NULL)
	    != NULL) {
		if (dir == PFIL_IN)
			ss->nskip_in_dejavu++;
		else
			ss->nskip_out_dejavu++;

		return (1);
	} else {
		struct m_tag *tag = FUNC0(PACKET_COOKIE_SIFTR,
		    PACKET_TAG_SIFTR, 0, M_NOWAIT);
		if (tag == NULL) {
			if (dir == PFIL_IN)
				ss->nskip_in_malloc++;
			else
				ss->nskip_out_malloc++;

			return (1);
		}

		FUNC2(m, tag);
	}

	return (0);
}