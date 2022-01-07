
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 int LIST_REMOVE (struct thread*,int ) ;
 int rw_wlock (int *) ;
 int rw_wunlock (int *) ;
 int td_hash ;
 int tidhash_lock ;

void
tidhash_remove(struct thread *td)
{
 rw_wlock(&tidhash_lock);
 LIST_REMOVE(td, td_hash);
 rw_wunlock(&tidhash_lock);
}
