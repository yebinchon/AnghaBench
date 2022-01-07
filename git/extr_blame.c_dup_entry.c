
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_entry {struct blame_entry* next; int suspect; } ;


 int blame_origin_decref (int ) ;
 int blame_origin_incref (int ) ;
 int memcpy (struct blame_entry*,struct blame_entry*,int) ;

__attribute__((used)) static void dup_entry(struct blame_entry ***queue,
        struct blame_entry *dst, struct blame_entry *src)
{
 blame_origin_incref(src->suspect);
 blame_origin_decref(dst->suspect);
 memcpy(dst, src, sizeof(*src));
 dst->next = **queue;
 **queue = dst;
 *queue = &dst->next;
}
