
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct sockaddr_storage {int ss_len; void* ss_family; } ;
struct sockaddr_in6 {int sin6_addr; void* sin6_port; } ;
struct sockaddr_in {int sin_addr; void* sin_port; } ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int opt ;
typedef int dst ;


 void* AF_INET ;
 void* AF_INET6 ;
 scalar_t__ EAGAIN ;
 int EXIT_FAILURE ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int PF_INET ;
 int PF_INET6 ;
 int SOCK_DGRAM ;
 int SOL_SOCKET ;
 int SO_DONTROUTE ;
 int bzero (struct sockaddr_storage*,int) ;
 int err (int ,char*,...) ;
 scalar_t__ errno ;
 int errx (int ,char*) ;
 int exit (int) ;
 int fprintf (int ,char*,char*) ;
 void* htons (int const) ;
 int inet_pton (void*,char const*,int *) ;
 int open (char const*,int) ;
 scalar_t__ read (int,char*,size_t const) ;
 int sendto (int,char const*,int ,int ,struct sockaddr*,int) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int socket (int ,int ,int ) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

int
main(int argc, char **argv)
{
 struct sockaddr_storage dst;
 int s, t;
 int opt;
 int ret;
 ssize_t len;
 const char* sendbuf = "Hello, World!";
 const size_t buflen = 80;
 char recvbuf[buflen];
 bool v6 = 0;
 const char *addr, *tapdev;
 const uint16_t port = 46120;

 bzero(&dst, sizeof(dst));
 if (argc < 3 || argc > 4) {
  fprintf(stderr, "Usage: %s [-6] ip_address tapdev\n", argv[0]);
  exit(2);
 }

 if (strcmp("-6", argv[1]) == 0) {
  v6 = 1;
  addr = argv[2];
  tapdev = argv[3];
 } else {
  addr = argv[1];
  tapdev = argv[2];
 }

 t = open(tapdev, O_RDWR | O_NONBLOCK);
 if (t < 0)
  err(EXIT_FAILURE, "open");

 if (v6)
  s = socket(PF_INET6, SOCK_DGRAM, 0);
 else
  s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s < 0)
  err(EXIT_FAILURE, "socket");
 opt = 1;

 ret = setsockopt(s, SOL_SOCKET, SO_DONTROUTE, &opt, sizeof(opt));
 if (ret == -1)
  err(EXIT_FAILURE, "setsockopt(SO_DONTROUTE)");

 if (v6) {
  struct sockaddr_in6 *dst6 = ((struct sockaddr_in6*)&dst);

  dst.ss_len = sizeof(struct sockaddr_in6);
  dst.ss_family = AF_INET6;
  dst6->sin6_port = htons(port);
  ret = inet_pton(AF_INET6, addr, &dst6->sin6_addr);
 } else {
  struct sockaddr_in *dst4 = ((struct sockaddr_in*)&dst);

  dst.ss_len = sizeof(struct sockaddr_in);
  dst.ss_family = AF_INET;
  dst4->sin_port = htons(port);
  ret = inet_pton(AF_INET, addr, &dst4->sin_addr);
 }
 if (ret != 1)
  err(EXIT_FAILURE, "inet_pton returned %d", ret);

 ret = sendto(s, sendbuf, strlen(sendbuf), 0, (struct sockaddr*)&dst,
     dst.ss_len);
 if (ret == -1)
  err(EXIT_FAILURE, "sendto");



 len = read(t, recvbuf, buflen);
 if (len == 0)
  errx(EXIT_FAILURE, "read returned EOF");
 else if (len < 0 && errno == EAGAIN)
  errx(EXIT_FAILURE, "Did not receive any packets");
 else if (len < 0)
  err(EXIT_FAILURE, "read");






 return (0);
}
