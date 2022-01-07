
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int * epoch_t ;
typedef TYPE_1__* epoch_record_t ;
typedef scalar_t__ epoch_context_t ;
typedef int ck_epoch_entry_t ;
typedef int ck_epoch_cb_t ;
struct TYPE_3__ {int er_record; } ;


 int* DPCPU_PTR (int ) ;
 int MPASS (void (*) (scalar_t__)) ;
 scalar_t__ __predict_false (int) ;
 int ck_epoch_call (int *,int *,int *) ;
 int critical_enter () ;
 int critical_exit () ;
 int epoch_cb_count ;
 TYPE_1__* epoch_currecord (int *) ;
 int inited ;

void
epoch_call(epoch_t epoch, epoch_context_t ctx, void (*callback) (epoch_context_t))
{
 epoch_record_t er;
 ck_epoch_entry_t *cb;

 cb = (void *)ctx;

 MPASS(callback);

 if (__predict_false(epoch == ((void*)0)))
  goto boottime;

 if (__predict_false(inited < 2))
  goto boottime;


 critical_enter();
 *DPCPU_PTR(epoch_cb_count) += 1;
 er = epoch_currecord(epoch);
 ck_epoch_call(&er->er_record, cb, (ck_epoch_cb_t *)callback);
 critical_exit();
 return;
boottime:
 callback(ctx);
}
