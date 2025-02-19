
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
struct nscd_connection_params {int socket_path; } ;
struct nscd_connection_ {int sockfd; int write_queue; int read_queue; } ;
struct kevent {int dummy; } ;


 int EVFILT_READ ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int *) ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int PF_LOCAL ;
 int SOCK_STREAM ;
 int TRACE_IN (int ) ;
 int TRACE_OUT (int ) ;
 int assert (int) ;
 struct nscd_connection_* calloc (int,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int fcntl (int,int ,int ) ;
 int kevent (int,struct kevent*,int,int *,int ,int *) ;
 void* kqueue () ;
 int open_nscd_connection ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,int ,int) ;
 int strlen (int ) ;

struct nscd_connection_ *
open_nscd_connection__(struct nscd_connection_params const *params)
{
 struct nscd_connection_ *retval;
 struct kevent eventlist;
 struct sockaddr_un client_address;
 int client_address_len, client_socket;
 int res;

 TRACE_IN(open_nscd_connection);
 assert(params != ((void*)0));

 client_socket = socket(PF_LOCAL, SOCK_STREAM, 0);
 client_address.sun_family = PF_LOCAL;
 strlcpy(client_address.sun_path, params->socket_path,
  sizeof(client_address.sun_path));
 client_address_len = sizeof(client_address.sun_family) +
  strlen(client_address.sun_path) + 1;

 res = connect(client_socket, (struct sockaddr *)&client_address,
  client_address_len);
 if (res == -1) {
  close(client_socket);
  TRACE_OUT(open_nscd_connection);
  return (((void*)0));
 }
 fcntl(client_socket, F_SETFL, O_NONBLOCK);

 retval = calloc(1, sizeof(*retval));
 assert(retval != ((void*)0));

 retval->sockfd = client_socket;

 retval->write_queue = kqueue();
 assert(retval->write_queue != -1);

 EV_SET(&eventlist, retval->sockfd, EVFILT_WRITE, EV_ADD,
  0, 0, ((void*)0));
 res = kevent(retval->write_queue, &eventlist, 1, ((void*)0), 0, ((void*)0));

 retval->read_queue = kqueue();
 assert(retval->read_queue != -1);

 EV_SET(&eventlist, retval->sockfd, EVFILT_READ, EV_ADD,
  0, 0, ((void*)0));
 res = kevent(retval->read_queue, &eventlist, 1, ((void*)0), 0, ((void*)0));

 TRACE_OUT(open_nscd_connection);
 return (retval);
}
