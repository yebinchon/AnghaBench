
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int ngatm_unilist_mtx ;

__attribute__((used)) static void
uni_msg_init(void)
{
 mtx_init(&ngatm_unilist_mtx, "netgraph UNI msg header lists", ((void*)0),
     MTX_DEF);
}
