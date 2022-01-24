#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int vm_offset_t ;
struct TYPE_4__ {scalar_t__ ext_buf; struct lge_softc* ext_arg1; } ;
struct mbuf {TYPE_2__ m_ext; } ;
struct TYPE_3__ {scalar_t__ lge_jumbo_buf; } ;
struct lge_softc {int /*<<< orphan*/  lge_jfree_listhead; int /*<<< orphan*/  lge_jinuse_listhead; TYPE_1__ lge_cdata; } ;
struct lge_jpool_entry {int slot; } ;

/* Variables and functions */
 int LGE_JLEN ; 
 int LGE_JSLOTS ; 
 struct lge_jpool_entry* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct lge_jpool_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jpool_entries ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(struct mbuf *m)
{
	struct lge_softc	*sc;
	int		        i;
	struct lge_jpool_entry   *entry;

	/* Extract the softc struct pointer. */
	sc = m->m_ext.ext_arg1;

	if (sc == NULL)
		FUNC3("lge_jfree: can't find softc pointer!");

	/* calculate the slot this buffer belongs to */
	i = ((vm_offset_t)m->m_ext.ext_buf
	     - (vm_offset_t)sc->lge_cdata.lge_jumbo_buf) / LGE_JLEN;

	if ((i < 0) || (i >= LGE_JSLOTS))
		FUNC3("lge_jfree: asked to free buffer that we don't manage!");

	entry = FUNC0(&sc->lge_jinuse_listhead);
	if (entry == NULL)
		FUNC3("lge_jfree: buffer not in use!");
	entry->slot = i;
	FUNC2(&sc->lge_jinuse_listhead, jpool_entries);
	FUNC1(&sc->lge_jfree_listhead, entry, jpool_entries);
}