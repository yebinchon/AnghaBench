
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int (* destroy_func ) (struct query_state*) ;struct query_state* io_buffer; struct query_state* eid_str; } ;


 int TRACE_IN (void (*) (struct query_state*)) ;
 int TRACE_OUT (void (*) (struct query_state*)) ;
 int free (struct query_state*) ;
 int stub1 (struct query_state*) ;

void
destroy_query_state(struct query_state *qstate)
{

 TRACE_IN(destroy_query_state);
 if (qstate->eid_str != ((void*)0))
     free(qstate->eid_str);

 if (qstate->io_buffer != ((void*)0))
  free(qstate->io_buffer);

 qstate->destroy_func(qstate);
 free(qstate);
 TRACE_OUT(destroy_query_state);
}
