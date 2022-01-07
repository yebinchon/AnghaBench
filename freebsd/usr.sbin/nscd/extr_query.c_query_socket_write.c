
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct query_state {int socket_failed; int sockfd; } ;
typedef int ssize_t ;


 int TRACE_IN (int (*) (struct query_state*,void const*,size_t)) ;
 int TRACE_OUT (int (*) (struct query_state*,void const*,size_t)) ;
 int write (int ,void const*,size_t) ;

ssize_t
query_socket_write(struct query_state *qstate, const void *buf, size_t nbytes)
{
 ssize_t result;

 TRACE_IN(query_socket_write);
 if (qstate->socket_failed != 0) {
  TRACE_OUT(query_socket_write);
  return (-1);
 }

 result = write(qstate->sockfd, buf, nbytes);
 if (result < 0 || (size_t)result < nbytes)
  qstate->socket_failed = 1;

 TRACE_OUT(query_socket_write);
 return (result);
}
