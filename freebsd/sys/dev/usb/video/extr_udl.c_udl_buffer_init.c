
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int mtx_init (int *,char*,char*,int ) ;
 int udl_buffer_head ;
 int udl_buffer_mtx ;

__attribute__((used)) static void
udl_buffer_init(void *arg)
{
 mtx_init(&udl_buffer_mtx, "USB", "UDL", MTX_DEF);
 TAILQ_INIT(&udl_buffer_head);
}
