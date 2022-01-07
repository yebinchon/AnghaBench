
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int conn_fd; } ;


 int bzero (struct connection*,int) ;
 int close (int ) ;
 int finished ;
 int free (struct connection*) ;

__attribute__((used)) static void
tcpp_client_closeconn(struct connection *conn)
{

 close(conn->conn_fd);
 bzero(conn, sizeof(*conn));
 free(conn);
 finished++;
}
