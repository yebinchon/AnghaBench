
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_queue_list {int dummy; } ;
struct ntb_queue_entry {int dummy; } ;
struct mtx {int dummy; } ;


 scalar_t__ STAILQ_EMPTY (struct ntb_queue_list*) ;
 struct ntb_queue_entry* STAILQ_FIRST (struct ntb_queue_list*) ;
 int STAILQ_INSERT_TAIL (struct ntb_queue_list*,struct ntb_queue_entry*,struct ntb_queue_entry*) ;
 int STAILQ_REMOVE_HEAD (struct ntb_queue_list*,struct ntb_queue_entry*) ;
 int mtx_lock_spin (struct mtx*) ;
 int mtx_unlock_spin (struct mtx*) ;

__attribute__((used)) static struct ntb_queue_entry *
ntb_list_mv(struct mtx *lock, struct ntb_queue_list *from,
    struct ntb_queue_list *to)
{
 struct ntb_queue_entry *entry;

 mtx_lock_spin(lock);
 if (STAILQ_EMPTY(from)) {
  entry = ((void*)0);
  goto out;
 }
 entry = STAILQ_FIRST(from);
 STAILQ_REMOVE_HEAD(from, entry);
 STAILQ_INSERT_TAIL(to, entry, entry);

out:
 mtx_unlock_spin(lock);
 return (entry);
}
