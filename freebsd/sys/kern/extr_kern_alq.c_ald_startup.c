
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int MTX_QUIET ;
 int ald_active ;
 int ald_mtx ;
 int ald_queues ;
 int mtx_init (int *,char*,int *,int) ;

__attribute__((used)) static void
ald_startup(void *unused)
{
 mtx_init(&ald_mtx, "ALDmtx", ((void*)0), MTX_DEF|MTX_QUIET);
 LIST_INIT(&ald_queues);
 LIST_INIT(&ald_active);
}
