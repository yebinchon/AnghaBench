
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness {int w_index; } ;


 int MA_OWNED ;
 int MPASS (int) ;
 scalar_t__ STAILQ_EMPTY (int *) ;
 struct witness* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int bzero (struct witness*,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock_spin (int *) ;
 int printf (char*) ;
 int w_free ;
 int w_free_cnt ;
 int w_list ;
 int w_max_used_index ;
 int w_mtx ;
 scalar_t__ witness_cold ;
 int witness_count ;
 int witness_watch ;

__attribute__((used)) static struct witness *
witness_get(void)
{
 struct witness *w;
 int index;

 if (witness_cold == 0)
  mtx_assert(&w_mtx, MA_OWNED);

 if (witness_watch == -1) {
  mtx_unlock_spin(&w_mtx);
  return (((void*)0));
 }
 if (STAILQ_EMPTY(&w_free)) {
  witness_watch = -1;
  mtx_unlock_spin(&w_mtx);
  printf("WITNESS: unable to allocate a new witness object\n");
  return (((void*)0));
 }
 w = STAILQ_FIRST(&w_free);
 STAILQ_REMOVE_HEAD(&w_free, w_list);
 w_free_cnt--;
 index = w->w_index;
 MPASS(index > 0 && index == w_max_used_index+1 &&
     index < witness_count);
 bzero(w, sizeof(*w));
 w->w_index = index;
 if (index > w_max_used_index)
  w_max_used_index = index;
 return (w);
}
