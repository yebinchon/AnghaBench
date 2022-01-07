
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int if_clone_advanced (int ,int ,int ,int ,int ) ;
 int sx_init (int *,char*) ;
 int t4_cloner ;
 int t4_cloner_create ;
 int t4_cloner_destroy ;
 int t4_cloner_match ;
 int t4_cloner_name ;
 int t4_trace_lock ;

void
t4_tracer_modload()
{

 sx_init(&t4_trace_lock, "T4/T5 tracer lock");
 t4_cloner = if_clone_advanced(t4_cloner_name, 0, t4_cloner_match,
     t4_cloner_create, t4_cloner_destroy);
}
