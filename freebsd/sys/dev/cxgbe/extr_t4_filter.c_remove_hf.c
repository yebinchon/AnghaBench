
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tid_info {int tids_in_use; int hftid_lock; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct filter_entry {TYPE_1__ fs; } ;
struct adapter {struct tid_info tids; } ;


 int LIST_REMOVE (struct filter_entry*,int ) ;
 int MA_OWNED ;
 int atomic_subtract_int (int *,int) ;
 int link_4t ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
remove_hf(struct adapter *sc, struct filter_entry *f)
{
 struct tid_info *t = &sc->tids;

 mtx_assert(&t->hftid_lock, MA_OWNED);

 LIST_REMOVE(f, link_4t);
 atomic_subtract_int(&t->tids_in_use, f->fs.type ? 2 : 1);
}
