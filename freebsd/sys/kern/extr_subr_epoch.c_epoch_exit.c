
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int epoch_t ;
typedef TYPE_1__* epoch_record_t ;
struct TYPE_3__ {int er_record; } ;


 int INIT_CHECK (int ) ;
 int ck_epoch_end (int *,int *) ;
 int critical_exit () ;
 TYPE_1__* epoch_currecord (int ) ;

void
epoch_exit(epoch_t epoch)
{
 epoch_record_t er;

 INIT_CHECK(epoch);
 er = epoch_currecord(epoch);
 ck_epoch_end(&er->er_record, ((void*)0));
 critical_exit();
}
