
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_journal_softc {int sc_dconsumer; int sc_name; } ;
struct g_journal_desc {int (* jd_dirty ) (int ) ;} ;


 int GJ_DEBUG (int,char*,int ) ;
 struct g_journal_desc** g_journal_filesystems ;
 int stub1 (int ) ;

__attribute__((used)) static void
g_journal_mark_as_dirty(struct g_journal_softc *sc)
{
 const struct g_journal_desc *desc;
 int i;

 GJ_DEBUG(1, "Marking file system %s as dirty.", sc->sc_name);
 for (i = 0; (desc = g_journal_filesystems[i]) != ((void*)0); i++)
  desc->jd_dirty(sc->sc_dconsumer);
}
