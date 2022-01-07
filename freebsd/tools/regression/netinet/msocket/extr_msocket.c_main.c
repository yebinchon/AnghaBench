
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_INET ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 scalar_t__ geteuid () ;
 int socket (int ,int ,int ) ;
 int test_addr (int,int,int) ;
 int test_if (int,int,int) ;
 int test_loop (int,int,int) ;
 int test_ttl (int,int,int) ;
 int test_udp () ;

int
main(int argc, char *argv[])
{
 int raw_sock, tcp_sock, udp_sock;

 if (geteuid() != 0)
  errx(-1, "FAIL: root privilege required");

 raw_sock = socket(PF_INET, SOCK_RAW, 0);
 if (raw_sock == -1)
  err(-1, "FAIL: socket(PF_INET, SOCK_RAW)");

 tcp_sock = socket(PF_INET, SOCK_STREAM, 0);
 if (raw_sock == -1)
  err(-1, "FAIL: socket(PF_INET, SOCK_STREAM)");

 udp_sock = socket(PF_INET, SOCK_DGRAM, 0);
 if (raw_sock == -1)
  err(-1, "FAIL: socket(PF_INET, SOCK_DGRAM)");

 test_ttl(raw_sock, tcp_sock, udp_sock);
 test_loop(raw_sock, tcp_sock, udp_sock);
 test_if(raw_sock, tcp_sock, udp_sock);
 test_addr(raw_sock, tcp_sock, udp_sock);

 close(udp_sock);
 close(tcp_sock);
 close(raw_sock);

 test_udp();

 return (0);
}
