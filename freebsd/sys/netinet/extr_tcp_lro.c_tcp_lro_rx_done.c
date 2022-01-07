
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lro_entry {int dummy; } ;
struct lro_ctrl {int lro_active; } ;


 struct lro_entry* LIST_FIRST (int *) ;
 int tcp_lro_active_remove (struct lro_entry*) ;
 int tcp_lro_flush (struct lro_ctrl*,struct lro_entry*) ;

__attribute__((used)) static void
tcp_lro_rx_done(struct lro_ctrl *lc)
{
 struct lro_entry *le;

 while ((le = LIST_FIRST(&lc->lro_active)) != ((void*)0)) {
  tcp_lro_active_remove(le);
  tcp_lro_flush(lc, le);
 }
}
