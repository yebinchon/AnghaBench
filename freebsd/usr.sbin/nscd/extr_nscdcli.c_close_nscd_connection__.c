
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nscd_connection_ {int write_queue; int read_queue; int sockfd; } ;


 int TRACE_IN (int ) ;
 int TRACE_OUT (int ) ;
 int assert (int ) ;
 int close (int ) ;
 int close_nscd_connection ;
 int free (struct nscd_connection_*) ;

void
close_nscd_connection__(struct nscd_connection_ *connection)
{

 TRACE_IN(close_nscd_connection);
 assert(connection != ((void*)0));

 close(connection->sockfd);
 close(connection->read_queue);
 close(connection->write_queue);
 free(connection);
 TRACE_OUT(close_nscd_connection);
}
