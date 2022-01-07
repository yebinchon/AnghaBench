
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_NOWITNESS ;
 int MTX_SPIN ;
 int cnputs_mtx ;
 int mtx_init (int *,char*,int *,int) ;
 int use_cnputs_mtx ;

__attribute__((used)) static void
cn_drvinit(void *unused)
{

 mtx_init(&cnputs_mtx, "cnputs_mtx", ((void*)0), MTX_SPIN | MTX_NOWITNESS);
 use_cnputs_mtx = 1;
}
