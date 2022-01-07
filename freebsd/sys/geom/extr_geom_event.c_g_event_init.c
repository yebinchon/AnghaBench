
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int g_eventlock ;
 int mtx_init (int *,char*,int *,int ) ;

void
g_event_init()
{

 mtx_init(&g_eventlock, "GEOM orphanage", ((void*)0), MTX_DEF);
}
