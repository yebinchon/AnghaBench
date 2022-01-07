
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_4__ {int lock; TYPE_1__* dlist; scalar_t__ count; } ;
struct octeon_device {TYPE_2__ dispatch; } ;
struct TYPE_3__ {int head; scalar_t__ opcode; } ;


 size_t LIO_DISPATCH_LIST_SIZE ;
 int MTX_DEF ;
 int STAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;

int
lio_init_dispatch_list(struct octeon_device *oct)
{
 uint32_t i;

 oct->dispatch.count = 0;

 for (i = 0; i < LIO_DISPATCH_LIST_SIZE; i++) {
  oct->dispatch.dlist[i].opcode = 0;
  STAILQ_INIT(&oct->dispatch.dlist[i].head);
 }

 mtx_init(&oct->dispatch.lock, "dispatch_lock", ((void*)0), MTX_DEF);

 return (0);
}
