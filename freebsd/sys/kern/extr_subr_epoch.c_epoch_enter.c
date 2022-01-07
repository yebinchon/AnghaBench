
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * epoch_t ;
typedef TYPE_1__* epoch_record_t ;
struct TYPE_3__ {int er_record; } ;


 int INIT_CHECK (int *) ;
 int MPASS (int) ;
 int ck_epoch_begin (int *,int *) ;
 scalar_t__ cold ;
 int critical_enter () ;
 TYPE_1__* epoch_currecord (int *) ;

void
epoch_enter(epoch_t epoch)
{
 epoch_record_t er;

 MPASS(cold || epoch != ((void*)0));
 INIT_CHECK(epoch);
 critical_enter();
 er = epoch_currecord(epoch);
 ck_epoch_begin(&er->er_record, ((void*)0));
}
