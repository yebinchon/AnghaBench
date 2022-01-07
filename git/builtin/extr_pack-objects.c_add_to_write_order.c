
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_entry {int filled; } ;


 scalar_t__ oe_layer (int *,struct object_entry*) ;
 int to_pack ;
 scalar_t__ write_layer ;

__attribute__((used)) static inline void add_to_write_order(struct object_entry **wo,
          unsigned int *endp,
          struct object_entry *e)
{
 if (e->filled || oe_layer(&to_pack, e) != write_layer)
  return;
 wo[(*endp)++] = e;
 e->filled = 1;
}
