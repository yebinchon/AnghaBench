
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int nguni_unilist_mtx ;

__attribute__((used)) static void
uni_init(void)
{
 mtx_init(&nguni_unilist_mtx, "netgraph UNI structure lists", ((void*)0),
     MTX_DEF);
}
