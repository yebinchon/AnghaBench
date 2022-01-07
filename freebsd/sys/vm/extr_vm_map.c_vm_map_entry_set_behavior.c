
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_entry_t ;
typedef int u_char ;
struct TYPE_3__ {int eflags; } ;


 int MAP_ENTRY_BEHAV_MASK ;

__attribute__((used)) static inline void
vm_map_entry_set_behavior(vm_map_entry_t entry, u_char behavior)
{
 entry->eflags = (entry->eflags & ~MAP_ENTRY_BEHAV_MASK) |
     (behavior & MAP_ENTRY_BEHAV_MASK);
}
