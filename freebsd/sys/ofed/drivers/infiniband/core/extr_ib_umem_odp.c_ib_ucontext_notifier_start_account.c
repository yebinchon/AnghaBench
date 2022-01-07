
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_ucontext {int notifier_count; } ;


 int atomic_inc (int *) ;

__attribute__((used)) static void ib_ucontext_notifier_start_account(struct ib_ucontext *context)
{
 atomic_inc(&context->notifier_count);
}
