
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct if_stat {int dummy; } ;
typedef int WINDOW ;


 int SLIST_EMPTY (int *) ;
 struct if_stat* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int curlist ;
 int delwin (int *) ;
 int free (struct if_stat*) ;
 int link ;
 int wclear (int *) ;
 int wrefresh (int *) ;

void
closeifstat(WINDOW *w)
{
 struct if_stat *node = ((void*)0);

 while (!SLIST_EMPTY(&curlist)) {
  node = SLIST_FIRST(&curlist);
  SLIST_REMOVE_HEAD(&curlist, link);
  free(node);
 }

 if (w != ((void*)0)) {
  wclear(w);
  wrefresh(w);
  delwin(w);
 }

 return;
}
