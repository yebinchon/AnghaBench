
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grouptask {int dummy; } ;
typedef int gtask_fn_t ;


 int GROUPTASK_INIT (struct grouptask*,int ,int *,void*) ;
 int qgroup_if_config_tqg ;
 int taskqgroup_attach (int ,struct grouptask*,struct grouptask*,int *,int *,char const*) ;

void
iflib_config_gtask_init(void *ctx, struct grouptask *gtask, gtask_fn_t *fn,
 const char *name)
{

 GROUPTASK_INIT(gtask, 0, fn, ctx);
 taskqgroup_attach(qgroup_if_config_tqg, gtask, gtask, ((void*)0), ((void*)0),
     name);
}
