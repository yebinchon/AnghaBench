
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kevent {int dummy; } ;
struct connection {int conn_fd; int conn_magic; } ;


 int CONNECTION_MAGIC ;
 int EVFILT_READ ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,struct connection*) ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int accept (int,int *,int *) ;
 int bzero (struct connection*,int) ;
 int err (int,char*) ;
 scalar_t__ fcntl (int,int ,int ) ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;
 int kq ;
 struct connection* malloc (int) ;
 int warn (char*) ;

__attribute__((used)) static struct connection *
tcpp_server_newconn(int listen_fd)
{
 struct connection *conn;
 struct kevent kev;
 int fd;

 fd = accept(listen_fd, ((void*)0), ((void*)0));
 if (fd < 0) {
  warn("accept");
  return (((void*)0));
 }

 if (fcntl(fd, F_SETFL, O_NONBLOCK) < 0)
  err(-1, "fcntl");

 conn = malloc(sizeof(*conn));
 if (conn == ((void*)0))
  return (((void*)0));
 bzero(conn, sizeof(*conn));
 conn->conn_magic = CONNECTION_MAGIC;
 conn->conn_fd = fd;





 EV_SET(&kev, fd, EVFILT_READ, EV_ADD, 0, 0, conn);
 if (kevent(kq, &kev, 1, ((void*)0), 0, ((void*)0)) < 0)
  err(-1, "kevent");

 return (conn);
}
