
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ kevent_watermark; int (* read_func ) (struct query_state*,int*,int) ;int eid_str_length; int process_func; int eid_str; int request; } ;
struct cache_read_request {int entry_length; int cache_key_size; int * cache_key; int * entry; } ;
typedef int ssize_t ;


 scalar_t__ BUFSIZE_INVALID (int) ;
 int CET_READ_REQUEST ;
 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 int assert (int ) ;
 void* calloc (int,int) ;
 struct cache_read_request* get_cache_read_request (int *) ;
 int init_comm_element (int *,int ) ;
 int memcpy (int *,int ,int) ;
 int on_read_request_read2 ;
 int stub1 (struct query_state*,int*,int) ;
 int stub2 (struct query_state*,int*,int) ;

__attribute__((used)) static int
on_read_request_read1(struct query_state *qstate)
{
 struct cache_read_request *read_request;
 ssize_t result;

 TRACE_IN(on_read_request_read1);
 if (qstate->kevent_watermark == 0)
  qstate->kevent_watermark = sizeof(size_t) * 2;
 else {
  init_comm_element(&qstate->request, CET_READ_REQUEST);
  read_request = get_cache_read_request(&qstate->request);

  result = qstate->read_func(qstate,
       &read_request->entry_length, sizeof(size_t));
  result += qstate->read_func(qstate,
       &read_request->cache_key_size, sizeof(size_t));

  if (result != sizeof(size_t) * 2) {
   TRACE_OUT(on_read_request_read1);
   return (-1);
  }

  if (BUFSIZE_INVALID(read_request->entry_length) ||
   BUFSIZE_INVALID(read_request->cache_key_size)) {
   TRACE_OUT(on_read_request_read1);
   return (-1);
  }

  read_request->entry = calloc(1,
   read_request->entry_length + 1);
  assert(read_request->entry != ((void*)0));

  read_request->cache_key = calloc(1,
   read_request->cache_key_size +
   qstate->eid_str_length);
  assert(read_request->cache_key != ((void*)0));
  memcpy(read_request->cache_key, qstate->eid_str,
   qstate->eid_str_length);

  qstate->kevent_watermark = read_request->entry_length +
   read_request->cache_key_size;
  qstate->process_func = on_read_request_read2;
 }

 TRACE_OUT(on_read_request_read1);
 return (0);
}
