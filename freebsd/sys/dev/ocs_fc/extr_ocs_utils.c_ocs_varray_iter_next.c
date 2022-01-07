
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int lock; } ;
typedef TYPE_1__ ocs_varray_t ;


 void* _ocs_varray_iter_next (TYPE_1__*) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

void *
ocs_varray_iter_next(ocs_varray_t *va)
{
 void *rval = ((void*)0);

 if (va != ((void*)0)) {
  ocs_lock(&va->lock);
   rval = _ocs_varray_iter_next(va);
  ocs_unlock(&va->lock);
 }
 return rval;
}
