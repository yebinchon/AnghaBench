
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx_args {int ma_opts; int ma_desc; scalar_t__ ma_mtx; } ;
struct mtx {int dummy; } ;


 int mtx_init (struct mtx*,int ,int *,int ) ;

void
mtx_sysinit(void *arg)
{
 struct mtx_args *margs = arg;

 mtx_init((struct mtx *)margs->ma_mtx, margs->ma_desc, ((void*)0),
     margs->ma_opts);
}
