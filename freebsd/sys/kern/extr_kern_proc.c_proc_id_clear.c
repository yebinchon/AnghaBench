
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int KASSERT (int,char*) ;
 int bit_clear (int ,int ) ;
 scalar_t__ bit_test (int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nitems (int *) ;
 int * proc_id_array ;
 int procid_lock ;

void
proc_id_clear(int type, pid_t id)
{

 KASSERT(type >= 0 && type < nitems(proc_id_array),
     ("invalid type %d\n", type));
 mtx_lock(&procid_lock);
 KASSERT(bit_test(proc_id_array[type], id) != 0,
     ("bit %d not set in %d\n", id, type));
 bit_clear(proc_id_array[type], id);
 mtx_unlock(&procid_lock);
}
