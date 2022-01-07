
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int io_lock; } ;
typedef TYPE_1__ ocs_hw_t ;
typedef int ocs_hw_io_t ;


 int * _ocs_hw_io_alloc (TYPE_1__*) ;
 int ocs_lock (int *) ;
 int ocs_unlock (int *) ;

ocs_hw_io_t *
ocs_hw_io_alloc(ocs_hw_t *hw)
{
 ocs_hw_io_t *io = ((void*)0);

 ocs_lock(&hw->io_lock);
  io = _ocs_hw_io_alloc(hw);
 ocs_unlock(&hw->io_lock);

 return io;
}
