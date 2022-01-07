
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* epoch_t ;
struct TYPE_4__ {scalar_t__ e_flags; int e_epoch; } ;


 int INIT_CHECK (TYPE_1__*) ;
 int MPASS (int) ;
 int ck_epoch_synchronize_wait (int *,int ,int *) ;
 scalar_t__ cold ;
 int critical_enter () ;
 int critical_exit () ;
 int epoch_block_handler ;

void
epoch_wait(epoch_t epoch)
{

 MPASS(cold || epoch != ((void*)0));
 INIT_CHECK(epoch);
 MPASS(epoch->e_flags == 0);
 critical_enter();
 ck_epoch_synchronize_wait(&epoch->e_epoch, epoch_block_handler, ((void*)0));
 critical_exit();
}
