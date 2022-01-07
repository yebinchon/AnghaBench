
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neglist {int nl_lock; int nl_list; } ;
struct namecache {int dummy; } ;


 struct namecache* TAILQ_FIRST (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct neglist* neglists ;
 int numneglists ;

__attribute__((used)) static void
cache_negative_shrink_select(int start, struct namecache **ncpp,
    struct neglist **neglistpp)
{
 struct neglist *neglist;
 struct namecache *ncp;
 int i;

 *ncpp = ncp = ((void*)0);
 neglist = ((void*)0);

 for (i = start; i < numneglists; i++) {
  neglist = &neglists[i];
  if (TAILQ_FIRST(&neglist->nl_list) == ((void*)0))
   continue;
  mtx_lock(&neglist->nl_lock);
  ncp = TAILQ_FIRST(&neglist->nl_list);
  if (ncp != ((void*)0))
   break;
  mtx_unlock(&neglist->nl_lock);
 }

 *neglistpp = neglist;
 *ncpp = ncp;
}
