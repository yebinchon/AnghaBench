
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_list {struct pack_list* next; } ;


 int memcpy (struct pack_list*,struct pack_list*,int) ;
 struct pack_list* xmalloc (int) ;

__attribute__((used)) static inline struct pack_list * pack_list_insert(struct pack_list **pl,
        struct pack_list *entry)
{
 struct pack_list *p = xmalloc(sizeof(struct pack_list));
 memcpy(p, entry, sizeof(struct pack_list));
 p->next = *pl;
 *pl = p;
 return p;
}
