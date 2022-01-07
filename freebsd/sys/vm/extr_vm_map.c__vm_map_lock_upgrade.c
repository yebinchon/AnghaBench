
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vm_map_t ;
struct TYPE_3__ {unsigned int timestamp; int lock; int system_mtx; scalar_t__ system_map; } ;


 int MA_OWNED ;
 int mtx_assert_ (int *,int ,char const*,int) ;
 int sx_sunlock_ (int *,char const*,int) ;
 int sx_try_upgrade_ (int *,char const*,int) ;
 int sx_xlock_ (int *,char const*,int) ;
 int sx_xunlock_ (int *,char const*,int) ;
 int vm_map_process_deferred () ;

int
_vm_map_lock_upgrade(vm_map_t map, const char *file, int line)
{
 unsigned int last_timestamp;

 if (map->system_map) {
  mtx_assert_(&map->system_mtx, MA_OWNED, file, line);
 } else {
  if (!sx_try_upgrade_(&map->lock, file, line)) {
   last_timestamp = map->timestamp;
   sx_sunlock_(&map->lock, file, line);
   vm_map_process_deferred();




   sx_xlock_(&map->lock, file, line);
   if (last_timestamp != map->timestamp) {
    sx_xunlock_(&map->lock, file, line);
    return (1);
   }
  }
 }
 map->timestamp++;
 return (0);
}
