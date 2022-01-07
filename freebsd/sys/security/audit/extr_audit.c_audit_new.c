
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_2__ {int ar_event; } ;
struct kaudit_record {TYPE_1__ k_ar; } ;


 int M_WAITOK ;
 int audit_mtx ;
 int audit_pre_q_len ;
 int audit_record_zone ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 struct kaudit_record* uma_zalloc_arg (int ,struct thread*,int ) ;

struct kaudit_record *
audit_new(int event, struct thread *td)
{
 struct kaudit_record *ar;






 ar = uma_zalloc_arg(audit_record_zone, td, M_WAITOK);
 ar->k_ar.ar_event = event;

 mtx_lock(&audit_mtx);
 audit_pre_q_len++;
 mtx_unlock(&audit_mtx);

 return (ar);
}
