
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_queue_list {int dummy; } ;
struct ntb_queue_entry {int dummy; } ;
struct mtx {int dummy; } ;


 scalar_t__ STAILQ_EMPTY (struct ntb_queue_list*) ;
 struct ntb_queue_entry* STAILQ_FIRST (struct ntb_queue_list*) ;
 int STAILQ_REMOVE_HEAD (struct ntb_queue_list*,struct ntb_queue_entry*) ;
 int mtx_lock_spin (struct mtx*) ;
 int mtx_unlock_spin (struct mtx*) ;

__attribute__((used)) static struct ntb_queue_entry *
ntb_list_rm(struct mtx *lock, struct ntb_queue_list *list)
{
 struct ntb_queue_entry *entry;

 mtx_lock_spin(lock);
 if (STAILQ_EMPTY(list)) {
  entry = ((void*)0);
  goto out;
 }
 entry = STAILQ_FIRST(list);
 STAILQ_REMOVE_HEAD(list, entry);
out:
 mtx_unlock_spin(lock);

 return (entry);
}
