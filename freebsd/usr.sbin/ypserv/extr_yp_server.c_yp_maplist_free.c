
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ypmaplist {struct ypmaplist* map; struct ypmaplist* next; } ;


 int free (struct ypmaplist*) ;

__attribute__((used)) static void yp_maplist_free(struct ypmaplist *yp_maplist)
{
 register struct ypmaplist *next;

 while (yp_maplist) {
  next = yp_maplist->next;
  free(yp_maplist->map);
  free(yp_maplist);
  yp_maplist = next;
 }
 return;
}
