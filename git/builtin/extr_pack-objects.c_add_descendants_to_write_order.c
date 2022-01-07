
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry {int dummy; } ;


 struct object_entry* DELTA (struct object_entry*) ;
 struct object_entry* DELTA_CHILD (struct object_entry*) ;
 struct object_entry* DELTA_SIBLING (struct object_entry*) ;
 int add_to_write_order (struct object_entry**,unsigned int*,struct object_entry*) ;

__attribute__((used)) static void add_descendants_to_write_order(struct object_entry **wo,
        unsigned int *endp,
        struct object_entry *e)
{
 int add_to_order = 1;
 while (e) {
  if (add_to_order) {
   struct object_entry *s;

   add_to_write_order(wo, endp, e);

   for (s = DELTA_SIBLING(e); s; s = DELTA_SIBLING(s)) {
    add_to_write_order(wo, endp, s);
   }
  }

  if (DELTA_CHILD(e)) {
   add_to_order = 1;
   e = DELTA_CHILD(e);
  } else {
   add_to_order = 0;

   if (DELTA_SIBLING(e)) {
    e = DELTA_SIBLING(e);
    continue;
   }

   e = DELTA(e);
   while (e && !DELTA_SIBLING(e)) {


    e = DELTA(e);
   }
   if (!e) {

    return;
   }

   e = DELTA_SIBLING(e);
  }
 };
}
