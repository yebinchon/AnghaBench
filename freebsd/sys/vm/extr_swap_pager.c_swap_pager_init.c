
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int NOBJLISTS ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int sw_alloc_sx ;
 int sw_dev_mtx ;
 int * swap_pager_object_list ;
 int swdev_syscall_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
swap_pager_init(void)
{



 int i;

 for (i = 0; i < NOBJLISTS; ++i)
  TAILQ_INIT(&swap_pager_object_list[i]);
 mtx_init(&sw_dev_mtx, "swapdev", ((void*)0), MTX_DEF);
 sx_init(&sw_alloc_sx, "swspsx");
 sx_init(&swdev_syscall_lock, "swsysc");
}
