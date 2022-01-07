
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
struct sseg_closure {int size; int count; } ;
struct TYPE_3__ {scalar_t__ start; scalar_t__ end; } ;



__attribute__((used)) static void
cb_size_segment(vm_map_entry_t entry, void *closure)
{
 struct sseg_closure *ssc = (struct sseg_closure *)closure;

 ssc->count++;
 ssc->size += entry->end - entry->start;
}
