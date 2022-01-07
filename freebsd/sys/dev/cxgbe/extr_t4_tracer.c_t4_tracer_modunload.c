
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int if_clone_detach (int *) ;
 int sx_destroy (int *) ;
 int * t4_cloner ;
 int t4_trace_lock ;

void
t4_tracer_modunload()
{

 if (t4_cloner != ((void*)0)) {







  if_clone_detach(t4_cloner);
 }
 sx_destroy(&t4_trace_lock);
}
