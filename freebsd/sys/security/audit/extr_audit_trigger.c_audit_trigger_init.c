
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int TAILQ_INIT (int *) ;
 int audit_trigger_mtx ;
 int mtx_init (int *,char*,int *,int ) ;
 int trigger_list ;

void
audit_trigger_init(void)
{

 TAILQ_INIT(&trigger_list);
 mtx_init(&audit_trigger_mtx, "audit_trigger_mtx", ((void*)0), MTX_DEF);
}
