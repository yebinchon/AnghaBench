
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_queue_list {int dummy; } ;
struct ntb_queue_entry {int dummy; } ;
struct mtx {int dummy; } ;


 int STAILQ_INSERT_TAIL (struct ntb_queue_list*,struct ntb_queue_entry*,struct ntb_queue_entry*) ;
 int mtx_lock_spin (struct mtx*) ;
 int mtx_unlock_spin (struct mtx*) ;

__attribute__((used)) static void
ntb_list_add(struct mtx *lock, struct ntb_queue_entry *entry,
    struct ntb_queue_list *list)
{

 mtx_lock_spin(lock);
 STAILQ_INSERT_TAIL(list, entry, entry);
 mtx_unlock_spin(lock);
}
