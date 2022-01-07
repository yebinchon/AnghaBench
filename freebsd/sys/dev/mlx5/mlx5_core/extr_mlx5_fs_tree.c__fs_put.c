
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {int lock; int refcount; int list; int users_refcount; struct fs_base* parent; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int kref_put (int *,void (*) (struct kref*)) ;
 int list_del_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void _fs_put(struct fs_base *node, void (*kref_cb)(struct kref *kref),
      bool parent_locked)
{
 struct fs_base *parent_node = node->parent;

 if (parent_node && !parent_locked)
  mutex_lock(&parent_node->lock);
 if (atomic_dec_and_test(&node->users_refcount)) {
  if (parent_node) {

   list_del_init(&node->list);
   mutex_unlock(&parent_node->lock);
  }
  kref_put(&node->refcount, kref_cb);
  if (parent_node && parent_locked)
   mutex_lock(&parent_node->lock);
 } else if (parent_node && !parent_locked) {
  mutex_unlock(&parent_node->lock);
 }
}
