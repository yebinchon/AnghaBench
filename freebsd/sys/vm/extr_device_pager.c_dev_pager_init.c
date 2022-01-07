
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int dev_pager_mtx ;
 int dev_pager_object_list ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
dev_pager_init(void)
{

 TAILQ_INIT(&dev_pager_object_list);
 mtx_init(&dev_pager_mtx, "dev_pager list", ((void*)0), MTX_DEF);
}
