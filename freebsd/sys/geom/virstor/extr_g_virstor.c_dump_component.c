
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_virstor_component {int index; int chunk_count; int chunk_next; int flags; TYPE_2__* gcons; } ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {char* name; } ;


 scalar_t__ LVL_DEBUG2 ;
 scalar_t__ g_virstor_debug ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
dump_component(struct g_virstor_component *comp)
{

 if (g_virstor_debug < LVL_DEBUG2)
  return;
 printf("Component %d: %s\n", comp->index, comp->gcons->provider->name);
 printf("  chunk_count: %u\n", comp->chunk_count);
 printf("   chunk_next: %u\n", comp->chunk_next);
 printf("        flags: %u\n", comp->flags);
}
