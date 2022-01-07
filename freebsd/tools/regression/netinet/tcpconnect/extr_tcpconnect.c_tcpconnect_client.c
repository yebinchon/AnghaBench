
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_len; int sin_port; int sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int md5enable ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ ENOPROTOOPT ;
 int F_SETFL ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int PF_INET ;
 int SOCK_STREAM ;
 int TCP_MD5SIG ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,int ) ;
 int htons (long) ;
 scalar_t__ inet_aton (char*,int *) ;
 scalar_t__ setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ strcmp (char*,char*) ;
 long strtoul (char*,char**,int) ;
 int usage () ;
 int warn (char*) ;

__attribute__((used)) static void
tcpconnect_client(int argc, char *argv[])
{
 struct sockaddr_in sin;
 long count, i, port;
 char *dummy;
 int sock;
 int nonblock = 0, md5enable = 0;

 if (argc < 3 || argc > 5)
  usage();
 for (i=3; i < argc; i++) {
  if (strcmp(argv[i], "nonblock") == 0)
   nonblock = 1;
  if (strcmp(argv[i], "tcpmd5") == 0)
   md5enable = 1;
 }

 bzero(&sin, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 if (inet_aton(argv[0], &sin.sin_addr) == 0)
  err(-1, "listen");

 port = strtoul(argv[1], &dummy, 10);
 if (port < 1 || port > 65535 || *dummy != '\0')
  usage();
 sin.sin_port = htons(port);

 count = strtoul(argv[2], &dummy, 10);
 if (count < 1 || count > 100000 || *dummy != '\0')
  usage();

 for (i = 0; i < count; i++) {
  sock = socket(PF_INET, SOCK_STREAM, 0);
  if (sock == -1)
   err(-1, "socket");


  if (setsockopt(sock, IPPROTO_TCP, TCP_MD5SIG,
      &md5enable, sizeof(md5enable)) != 0) {
   if (errno == ENOPROTOOPT && md5enable > 0)
    err(-1, "setsockopt(TCP_MD5SIG)");
   else if (errno != ENOPROTOOPT)
    warn("setsockopt(TCP_MD5SIG)");
  }

  if (nonblock) {
   if (fcntl(sock, F_SETFL, O_NONBLOCK) != 0)
    err(-1, "fcntl(F_SETFL)");

   if (connect(sock, (struct sockaddr *)&sin,
       sizeof(sin)) == -1 && errno != EINPROGRESS)
    err(-1, "connect");
  } else {
   if (connect(sock, (struct sockaddr *)&sin,
       sizeof(sin)) == -1)
    err(-1, "connect");
  }

  close(sock);
 }
}
