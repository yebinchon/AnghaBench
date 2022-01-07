
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_list {scalar_t__ pack; struct pack_list* next; } ;


 int memcpy (struct pack_list*,struct pack_list const*,int) ;
 struct pack_list* xmalloc (int) ;

__attribute__((used)) static struct pack_list * pack_list_difference(const struct pack_list *A,
            const struct pack_list *B)
{
 struct pack_list *ret;
 const struct pack_list *pl;

 if (A == ((void*)0))
  return ((void*)0);

 pl = B;
 while (pl != ((void*)0)) {
  if (A->pack == pl->pack)
   return pack_list_difference(A->next, B);
  pl = pl->next;
 }
 ret = xmalloc(sizeof(struct pack_list));
 memcpy(ret, A, sizeof(struct pack_list));
 ret->next = pack_list_difference(A->next, B);
 return ret;
}
