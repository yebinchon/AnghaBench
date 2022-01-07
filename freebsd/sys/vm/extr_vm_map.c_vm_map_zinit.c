
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {int lock; int system_mtx; } ;


 int MTX_DEF ;
 int MTX_DUPOK ;
 int memset (TYPE_1__*,int ,int) ;
 int mtx_init (int *,char*,int *,int) ;
 int sx_init (int *,char*) ;

__attribute__((used)) static int
vm_map_zinit(void *mem, int size, int flags)
{
 vm_map_t map;

 map = (vm_map_t)mem;
 memset(map, 0, sizeof(*map));
 mtx_init(&map->system_mtx, "vm map (system)", ((void*)0), MTX_DEF | MTX_DUPOK);
 sx_init(&map->lock, "vm map (user)");
 return (0);
}
