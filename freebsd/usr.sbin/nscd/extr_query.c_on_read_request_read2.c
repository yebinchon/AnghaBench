
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ (* read_func ) (struct query_state*,scalar_t__,int ) ;int process_func; scalar_t__ kevent_watermark; scalar_t__ eid_str_length; int request; } ;
struct cache_read_request {int cache_key_size; scalar_t__ cache_key; int entry_length; scalar_t__ entry; } ;
typedef scalar_t__ ssize_t ;


 int TRACE_IN (int (*) (struct query_state*)) ;
 int TRACE_OUT (int (*) (struct query_state*)) ;
 struct cache_read_request* get_cache_read_request (int *) ;
 int on_read_request_process ;
 scalar_t__ stub1 (struct query_state*,scalar_t__,int ) ;
 scalar_t__ stub2 (struct query_state*,scalar_t__,int ) ;

__attribute__((used)) static int
on_read_request_read2(struct query_state *qstate)
{
 struct cache_read_request *read_request;
 ssize_t result;

 TRACE_IN(on_read_request_read2);
 read_request = get_cache_read_request(&qstate->request);

 result = qstate->read_func(qstate, read_request->entry,
  read_request->entry_length);
 result += qstate->read_func(qstate,
  read_request->cache_key + qstate->eid_str_length,
  read_request->cache_key_size);

 if (result != (ssize_t)qstate->kevent_watermark) {
  TRACE_OUT(on_read_request_read2);
  return (-1);
 }
 read_request->cache_key_size += qstate->eid_str_length;

 qstate->kevent_watermark = 0;
 qstate->process_func = on_read_request_process;

 TRACE_OUT(on_read_request_read2);
 return (0);
}
