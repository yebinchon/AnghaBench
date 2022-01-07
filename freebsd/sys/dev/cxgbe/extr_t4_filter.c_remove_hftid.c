
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tid_info {int hftid_lock; } ;
struct filter_entry {int dummy; } ;
struct adapter {struct tid_info tids; } ;


 int LIST_REMOVE (struct filter_entry*,int ) ;
 int MA_OWNED ;
 int link_tid ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
remove_hftid(struct adapter *sc, struct filter_entry *f)
{






 LIST_REMOVE(f, link_tid);
}
