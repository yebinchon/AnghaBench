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
struct pf_mtag {int dummy; } ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  PACKET_TAG_PF ; 
 int /*<<< orphan*/  FUNC0 (struct m_tag*,int) ; 
 struct m_tag* FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,struct m_tag*) ; 
 int /*<<< orphan*/  pf_mtag_z ; 
 struct m_tag* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct pf_mtag *
FUNC4(struct mbuf *m)
{
	struct m_tag *mtag;

	if ((mtag = FUNC1(m, PACKET_TAG_PF, NULL)) != NULL)
		return ((struct pf_mtag *)(mtag + 1));

	mtag = FUNC3(pf_mtag_z, M_NOWAIT);
	if (mtag == NULL)
		return (NULL);
	FUNC0(mtag + 1, sizeof(struct pf_mtag));
	FUNC2(m, mtag);

	return ((struct pf_mtag *)(mtag + 1));
}