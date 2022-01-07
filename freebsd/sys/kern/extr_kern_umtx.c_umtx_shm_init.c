
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtx_shm_reg {int dummy; } ;


 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int UMA_ALIGN_PTR ;
 int mtx_init (int *,char*,int *,int ) ;
 int nitems (int *) ;
 int uma_zcreate (char*,int,int *,int *,int *,int *,int ,int ) ;
 int umtx_shm_lock ;
 int umtx_shm_reg_zone ;
 int * umtx_shm_registry ;

__attribute__((used)) static void
umtx_shm_init(void)
{
 int i;

 umtx_shm_reg_zone = uma_zcreate("umtx_shm", sizeof(struct umtx_shm_reg),
     ((void*)0), ((void*)0), ((void*)0), ((void*)0), UMA_ALIGN_PTR, 0);
 mtx_init(&umtx_shm_lock, "umtxshm", ((void*)0), MTX_DEF);
 for (i = 0; i < nitems(umtx_shm_registry); i++)
  TAILQ_INIT(&umtx_shm_registry[i]);
}
