
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct ib_umem {TYPE_1__* context; } ;
struct TYPE_2__ {int (* invalidate_range ) (struct ib_umem*,scalar_t__,scalar_t__) ;} ;


 scalar_t__ PAGE_SIZE ;
 int ib_umem_notifier_end_account (struct ib_umem*) ;
 int ib_umem_notifier_start_account (struct ib_umem*) ;
 int stub1 (struct ib_umem*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int invalidate_page_trampoline(struct ib_umem *item, u64 start,
          u64 end, void *cookie)
{
 ib_umem_notifier_start_account(item);
 item->context->invalidate_range(item, start, start + PAGE_SIZE);
 ib_umem_notifier_end_account(item);
 return 0;
}
