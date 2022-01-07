
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int request; int response; } ;


 int TRACE_IN (void (*) (struct query_state*)) ;
 int TRACE_OUT (void (*) (struct query_state*)) ;
 int finalize_comm_element (int *) ;

__attribute__((used)) static void
on_query_destroy(struct query_state *qstate)
{

 TRACE_IN(on_query_destroy);
 finalize_comm_element(&qstate->response);
 finalize_comm_element(&qstate->request);
 TRACE_OUT(on_query_destroy);
}
