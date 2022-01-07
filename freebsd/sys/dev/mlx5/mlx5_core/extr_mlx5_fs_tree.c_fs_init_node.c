
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {int lock; int list; int complete; int users_refcount; int refcount; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,unsigned int) ;
 int init_completion (int *) ;
 int kref_init (int *) ;
 int mutex_init (int *) ;

__attribute__((used)) static void fs_init_node(struct fs_base *node,
    unsigned int refcount)
{
 kref_init(&node->refcount);
 atomic_set(&node->users_refcount, refcount);
 init_completion(&node->complete);
 INIT_LIST_HEAD(&node->list);
 mutex_init(&node->lock);
}
