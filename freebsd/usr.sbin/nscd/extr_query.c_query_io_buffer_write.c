
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {scalar_t__ io_buffer_size; int use_alternate_io; int read_func; int write_func; int * io_buffer; int * io_buffer_p; } ;
typedef int ssize_t ;


 int TRACE_IN (int (*) (struct query_state*,void const*,size_t)) ;
 int TRACE_OUT (int (*) (struct query_state*,void const*,size_t)) ;
 int assert (int) ;
 int memcpy (int *,void const*,int) ;
 int query_socket_read ;
 int query_socket_write ;

ssize_t
query_io_buffer_write(struct query_state *qstate, const void *buf,
 size_t nbytes)
{
 size_t remaining;
 ssize_t result;

 TRACE_IN(query_io_buffer_write);
 if ((qstate->io_buffer_size == 0) || (qstate->io_buffer == ((void*)0)))
  return (-1);

 assert(qstate->io_buffer_p <=
  qstate->io_buffer + qstate->io_buffer_size);
 remaining = qstate->io_buffer + qstate->io_buffer_size -
  qstate->io_buffer_p;
 if (nbytes < remaining)
  result = nbytes;
 else
  result = remaining;

 memcpy(qstate->io_buffer_p, buf, result);
 qstate->io_buffer_p += result;

 if (remaining == 0) {
  qstate->use_alternate_io = 1;
  qstate->io_buffer_p = qstate->io_buffer;

  qstate->write_func = query_socket_write;
  qstate->read_func = query_socket_read;
 }

 TRACE_OUT(query_io_buffer_write);
 return (result);
}
