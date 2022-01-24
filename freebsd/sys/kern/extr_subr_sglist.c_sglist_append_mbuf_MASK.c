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
struct sgsave {int dummy; } ;
struct sglist {scalar_t__ sg_maxseg; } ;
struct mbuf {scalar_t__ m_len; int m_flags; int /*<<< orphan*/  m_data; struct mbuf* m_next; } ;

/* Variables and functions */
 int EINVAL ; 
 int M_NOMAP ; 
 int /*<<< orphan*/  FUNC0 (struct sglist*,struct sgsave) ; 
 int /*<<< orphan*/  FUNC1 (struct sglist*,struct sgsave) ; 
 int FUNC2 (struct sglist*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct sglist*,struct mbuf*) ; 

int
FUNC4(struct sglist *sg, struct mbuf *m0)
{
	struct sgsave save;
	struct mbuf *m;
	int error;

	if (sg->sg_maxseg == 0)
		return (EINVAL);

	error = 0;
	FUNC1(sg, save);
	for (m = m0; m != NULL; m = m->m_next) {
		if (m->m_len > 0) {
			if ((m->m_flags & M_NOMAP) != 0)
				error = FUNC3(sg, m);
			else
				error = FUNC2(sg, m->m_data,
				    m->m_len);
			if (error) {
				FUNC0(sg, save);
				return (error);
			}
		}
	}
	return (0);
}