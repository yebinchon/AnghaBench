
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int td_tid; } ;


 int LIST_INSERT_HEAD (int ,struct thread*,int ) ;
 int TIDHASH (int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int td_hash ;
 int tidhash_lock ;

void
tidhash_add(struct thread *td)
{
 rw_wlock(&tidhash_lock);
 LIST_INSERT_HEAD(TIDHASH(td->td_tid), td, td_hash);
 rw_wunlock(&tidhash_lock);
}
