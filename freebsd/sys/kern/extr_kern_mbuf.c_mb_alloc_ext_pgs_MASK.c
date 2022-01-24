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
struct mbuf_ext_pgs {int /*<<< orphan*/ * so; int /*<<< orphan*/ * tls; scalar_t__ trail_len; scalar_t__ hdr_len; scalar_t__ flags; scalar_t__ last_pg_len; scalar_t__ first_pg_off; scalar_t__ nrdy; scalar_t__ npgs; } ;
struct TYPE_2__ {int ext_count; int /*<<< orphan*/  ext_free; scalar_t__ ext_size; struct mbuf_ext_pgs* ext_pgs; int /*<<< orphan*/  ext_flags; int /*<<< orphan*/  ext_type; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; int /*<<< orphan*/ * m_data; } ;
typedef  int /*<<< orphan*/  m_ext_free_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXT_FLAG_EMBREF ; 
 int /*<<< orphan*/  EXT_PGS ; 
 int /*<<< orphan*/  MT_DATA ; 
 int M_EXT ; 
 int M_NOMAP ; 
 int M_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 
 struct mbuf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct mbuf_ext_pgs* FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  zone_extpgs ; 

struct mbuf *
FUNC4(int how, bool pkthdr, m_ext_free_t ext_free)
{
	struct mbuf *m;
	struct mbuf_ext_pgs *ext_pgs;

	if (pkthdr)
		m = FUNC2(how, MT_DATA);
	else
		m = FUNC1(how, MT_DATA);
	if (m == NULL)
		return (NULL);

	ext_pgs = FUNC3(zone_extpgs, how);
	if (ext_pgs == NULL) {
		FUNC0(m);
		return (NULL);
	}
	ext_pgs->npgs = 0;
	ext_pgs->nrdy = 0;
	ext_pgs->first_pg_off = 0;
	ext_pgs->last_pg_len = 0;
	ext_pgs->flags = 0;
	ext_pgs->hdr_len = 0;
	ext_pgs->trail_len = 0;
	ext_pgs->tls = NULL;
	ext_pgs->so = NULL;
	m->m_data = NULL;
	m->m_flags |= (M_EXT | M_RDONLY | M_NOMAP);
	m->m_ext.ext_type = EXT_PGS;
	m->m_ext.ext_flags = EXT_FLAG_EMBREF;
	m->m_ext.ext_count = 1;
	m->m_ext.ext_pgs = ext_pgs;
	m->m_ext.ext_size = 0;
	m->m_ext.ext_free = ext_free;
	return (m);
}