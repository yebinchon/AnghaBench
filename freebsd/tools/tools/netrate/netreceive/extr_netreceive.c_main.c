
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v ;
typedef int u_short ;
struct td_desc {int dummy; } ;
struct addrinfo {int ai_addrlen; int ai_addr; int ai_protocol; int ai_socktype; int ai_family; struct addrinfo* ai_next; int ai_flags; } ;
typedef int hints ;


 int AI_PASSIVE ;
 int MAXSOCK ;
 int PF_UNSPEC ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_RCVBUF ;
 scalar_t__ bind (int,int ,int ) ;
 int bzero (char*,int) ;
 int close (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 char const* gai_strerror (int) ;
 int getaddrinfo (int *,char*,struct addrinfo*,struct addrinfo**) ;
 int listen (int,int) ;
 int main_thread (struct td_desc**,int,int) ;
 struct td_desc** make_threads (int*,int,int) ;
 char* malloc (int) ;
 int memset (struct addrinfo*,int ,int) ;
 int perror (char const*) ;
 int printf (char*,int,int,int) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int strtoul (char*,char**,int) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct addrinfo hints, *res, *res0;
 char *dummy, *packet;
 int port;
 int error, v, nthreads = 1;
 struct td_desc **tp;
 const char *cause = ((void*)0);
 int s[MAXSOCK];
 int nsock;

 if (argc < 2)
  usage();

 memset(&hints, 0, sizeof(hints));
 hints.ai_family = PF_UNSPEC;
 hints.ai_socktype = SOCK_DGRAM;
 hints.ai_flags = AI_PASSIVE;

 port = strtoul(argv[1], &dummy, 10);
 if (port < 1 || port > 65535 || *dummy != '\0')
  usage();
 if (argc > 2)
  nthreads = strtoul(argv[2], &dummy, 10);
 if (nthreads < 1 || nthreads > 64)
  usage();

 packet = malloc(65536);
 if (packet == ((void*)0)) {
  perror("malloc");
  return (-1);
 }
 bzero(packet, 65536);

 error = getaddrinfo(((void*)0), argv[1], &hints, &res0);
 if (error) {
  perror(gai_strerror(error));
  return (-1);

 }

 nsock = 0;
 for (res = res0; res && nsock < MAXSOCK; res = res->ai_next) {
  s[nsock] = socket(res->ai_family, res->ai_socktype,
  res->ai_protocol);
  if (s[nsock] < 0) {
   cause = "socket";
   continue;
  }

  v = 128 * 1024;
  if (setsockopt(s[nsock], SOL_SOCKET, SO_RCVBUF, &v, sizeof(v)) < 0) {
   cause = "SO_RCVBUF";
   close(s[nsock]);
   continue;
  }
  if (bind(s[nsock], res->ai_addr, res->ai_addrlen) < 0) {
   cause = "bind";
   close(s[nsock]);
   continue;
  }
  (void) listen(s[nsock], 5);
  nsock++;
 }
 if (nsock == 0) {
  perror(cause);
  return (-1);

 }

 printf("netreceive %d sockets x %d threads listening on UDP port %d\n",
  nsock, nthreads, (u_short)port);

 tp = make_threads(s, nsock, nthreads);
 main_thread(tp, nsock, nthreads);


 freeaddrinfo(res0);
}
