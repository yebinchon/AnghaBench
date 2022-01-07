
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct ib_umem {TYPE_2__* context; TYPE_1__* odp_data; } ;
struct TYPE_4__ {int (* invalidate_range ) (struct ib_umem*,int ,int ) ;} ;
struct TYPE_3__ {int dying; int notifier_completion; } ;


 int complete_all (int *) ;
 int ib_umem_end (struct ib_umem*) ;
 int ib_umem_notifier_start_account (struct ib_umem*) ;
 int ib_umem_start (struct ib_umem*) ;
 int smp_wmb () ;
 int stub1 (struct ib_umem*,int ,int ) ;

__attribute__((used)) static int ib_umem_notifier_release_trampoline(struct ib_umem *item, u64 start,
            u64 end, void *cookie) {




 ib_umem_notifier_start_account(item);
 item->odp_data->dying = 1;


 smp_wmb();
 complete_all(&item->odp_data->notifier_completion);
 item->context->invalidate_range(item, ib_umem_start(item),
     ib_umem_end(item));
 return 0;
}
