
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct per_user_data {int user_data_lock; int gmap_tree; } ;
struct gntdev_gmap {scalar_t__ count; int file_index; } ;


 struct gntdev_gmap* RB_FIND (int ,int *,struct gntdev_gmap*) ;
 int gmap_tree_head ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct gntdev_gmap*
gntdev_find_gmap(struct per_user_data *priv_user,
 uint64_t index, uint32_t count)
{
 struct gntdev_gmap find_gmap, *gmap;

 find_gmap.file_index = index;

 mtx_lock(&priv_user->user_data_lock);
 gmap = RB_FIND(gmap_tree_head, &priv_user->gmap_tree, &find_gmap);
 mtx_unlock(&priv_user->user_data_lock);

 if (gmap != ((void*)0) && gmap->count == count)
  return (gmap);
 return (((void*)0));
}
