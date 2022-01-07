
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_4__ {scalar_t__ ext_buf; struct lge_softc* ext_arg1; } ;
struct mbuf {TYPE_2__ m_ext; } ;
struct TYPE_3__ {scalar_t__ lge_jumbo_buf; } ;
struct lge_softc {int lge_jfree_listhead; int lge_jinuse_listhead; TYPE_1__ lge_cdata; } ;
struct lge_jpool_entry {int slot; } ;


 int LGE_JLEN ;
 int LGE_JSLOTS ;
 struct lge_jpool_entry* SLIST_FIRST (int *) ;
 int SLIST_INSERT_HEAD (int *,struct lge_jpool_entry*,int ) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int jpool_entries ;
 int panic (char*) ;

__attribute__((used)) static void
lge_jfree(struct mbuf *m)
{
 struct lge_softc *sc;
 int i;
 struct lge_jpool_entry *entry;


 sc = m->m_ext.ext_arg1;

 if (sc == ((void*)0))
  panic("lge_jfree: can't find softc pointer!");


 i = ((vm_offset_t)m->m_ext.ext_buf
      - (vm_offset_t)sc->lge_cdata.lge_jumbo_buf) / LGE_JLEN;

 if ((i < 0) || (i >= LGE_JSLOTS))
  panic("lge_jfree: asked to free buffer that we don't manage!");

 entry = SLIST_FIRST(&sc->lge_jinuse_listhead);
 if (entry == ((void*)0))
  panic("lge_jfree: buffer not in use!");
 entry->slot = i;
 SLIST_REMOVE_HEAD(&sc->lge_jinuse_listhead, jpool_entries);
 SLIST_INSERT_HEAD(&sc->lge_jfree_listhead, entry, jpool_entries);
}
