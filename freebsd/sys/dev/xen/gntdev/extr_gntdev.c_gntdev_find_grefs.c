
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct per_user_data {int user_data_lock; int gref_tree; } ;
struct gntdev_gref {scalar_t__ file_index; } ;


 scalar_t__ PAGE_SIZE ;
 struct gntdev_gref* RB_FIND (int ,int *,struct gntdev_gref*) ;
 struct gntdev_gref* RB_NEXT (int ,int *,struct gntdev_gref*) ;
 int gref_tree_head ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static struct gntdev_gref*
gntdev_find_grefs(struct per_user_data *priv_user,
 uint64_t index, uint32_t count)
{
 struct gntdev_gref find_gref, *gref, *gref_start = ((void*)0);

 find_gref.file_index = index;

 mtx_lock(&priv_user->user_data_lock);
 gref_start = RB_FIND(gref_tree_head, &priv_user->gref_tree, &find_gref);
 for (gref = gref_start; gref != ((void*)0) && count > 0; gref =
     RB_NEXT(gref_tree_head, &priv_user->gref_tree, gref)) {
  if (index != gref->file_index)
   break;
  index += PAGE_SIZE;
  count--;
 }
 mtx_unlock(&priv_user->user_data_lock);

 if (count)
  return (((void*)0));
 return (gref_start);
}
