
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {struct blame_entry* next; int suspect; } ;


 int blame_origin_incref (int ) ;
 int memcpy (struct blame_entry*,struct blame_entry const*,int) ;
 struct blame_entry* xmalloc (int) ;

__attribute__((used)) static void add_blame_entry(struct blame_entry ***queue,
       const struct blame_entry *src)
{
 struct blame_entry *e = xmalloc(sizeof(*e));
 memcpy(e, src, sizeof(*e));
 blame_origin_incref(e->suspect);

 e->next = **queue;
 **queue = e;
 *queue = &e->next;
}
