
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int phys_pager_mtx ;
 int phys_pager_object_list ;

__attribute__((used)) static void
phys_pager_init(void)
{

 TAILQ_INIT(&phys_pager_object_list);
 mtx_init(&phys_pager_mtx, "phys_pager list", ((void*)0), MTX_DEF);
}
