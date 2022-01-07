
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct visibility_plugin {int pl_mtx; struct vis_map* pl_node; } ;
struct vis_map {int* map; } ;
struct link {size_t id1; int id2; } ;


 int ARRAY_SIZE ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;

__attribute__((used)) static void
del_link(struct visibility_plugin *vis_plugin, struct link *l)
{

 mtx_lock(&vis_plugin->pl_mtx);
 struct vis_map *map = &vis_plugin->pl_node[l->id1];
 int index = l->id2/ARRAY_SIZE;
 int bit = l->id2 % ARRAY_SIZE;
 uint32_t value = 1 << bit;
 map->map[index] = map->map[index] & ~value;
 mtx_unlock(&vis_plugin->pl_mtx);



}
