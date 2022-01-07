
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct utrace_args {int len; int addr; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int ktr_len; } ;
struct ktr_request {TYPE_1__ ktr_header; void* ktr_buffer; } ;


 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int KTRPOINT (struct thread*,int ) ;
 int KTR_USER ;
 int KTR_USER_MAXLEN ;
 int M_KTRACE ;
 int M_WAITOK ;
 int copyin (int ,void*,int ) ;
 int free (void*,int ) ;
 struct ktr_request* ktr_getrequest (int ) ;
 int ktr_submitrequest (struct thread*,struct ktr_request*) ;
 void* malloc (int ,int ,int ) ;

int
sys_utrace(struct thread *td, struct utrace_args *uap)
{
 return (ENOSYS);

}
