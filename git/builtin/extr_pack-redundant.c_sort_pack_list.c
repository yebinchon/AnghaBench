
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_list {struct pack_list* next; } ;


 int QSORT (struct pack_list**,size_t,int ) ;
 int cmp_remaining_objects ;
 int free (struct pack_list**) ;
 size_t pack_list_size (struct pack_list*) ;
 struct pack_list** xcalloc (size_t,int) ;

__attribute__((used)) static void sort_pack_list(struct pack_list **pl)
{
 struct pack_list **ary, *p;
 int i;
 size_t n = pack_list_size(*pl);

 if (n < 2)
  return;


 ary = xcalloc(n, sizeof(struct pack_list *));
 for (n = 0, p = *pl; p; p = p->next)
  ary[n++] = p;

 QSORT(ary, n, cmp_remaining_objects);


 for (i = 0; i < n - 1; i++)
  ary[i]->next = ary[i + 1];
 ary[n - 1]->next = ((void*)0);
 *pl = ary[0];

 free(ary);
}
