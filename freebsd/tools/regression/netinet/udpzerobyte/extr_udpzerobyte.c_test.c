
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;


 int F_SETFL ;
 int O_NONBLOCK ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int ) ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*,scalar_t__) ;
 scalar_t__ fcntl (int,int ,int ,int) ;
 scalar_t__ recv (int,int *,int ,int ) ;
 scalar_t__ send (int,int *,int ,int ) ;
 int sleep (int) ;
 int socket (int,int ,int ) ;

__attribute__((used)) static void
test(int domain, const char *domainstr, struct sockaddr *sa, socklen_t salen)
{
 int sock_send, sock_receive;
 ssize_t size;

 sock_send = socket(domain, SOCK_DGRAM, 0);
 if (sock_send < 0)
  err(-1, "socket(%s, SOCK_DGRAM, 0)", domainstr);

 sock_receive = socket(domain, SOCK_DGRAM, 0);
 if (sock_receive < 0)
  err(-1, "socket(%s, SOCK_DGRAM, 0)", domainstr);

 if (bind(sock_receive, sa, salen) < 0)
  err(-1, "Protocol %s bind(sock_receive)", domainstr);
 if (fcntl(sock_receive, F_SETFL, O_NONBLOCK, 1) < 0)
  err(-1, "Protocll %s fcntl(sock_receive, FL_SETFL, "
      "O_NONBLOCK)", domainstr);

 if (connect(sock_send, sa, salen) < 0)
  err(-1, "Protocol %s connect(sock_send)", domainstr);

 size = recv(sock_receive, ((void*)0), 0, 0);
 if (size > 0)
  errx(-1, "Protocol %s recv(sock_receive, NULL, 0) before: %zd",
      domainstr, size);
 else if (size < 0)
  err(-1, "Protocol %s recv(sock_receive, NULL, 0) before",
      domainstr);

 size = send(sock_send, ((void*)0), 0, 0);
 if (size < 0)
  err(-1, "Protocol %s send(sock_send, NULL, 0)", domainstr);

 (void)sleep(1);
 size = recv(sock_receive, ((void*)0), 0, 0);
 if (size < 0)
  err(-1, "Protocol %s recv(sock_receive, NULL, 0) test",
      domainstr);

 size = recv(sock_receive, ((void*)0), 0, 0);
 if (size > 0)
  errx(-1, "Protocol %s recv(sock_receive, NULL, 0) after: %zd",
      domainstr, size);
 else if (size < 0)
  err(-1, "Protocol %s recv(sock_receive, NULL, 0) after",
      domainstr);
}
