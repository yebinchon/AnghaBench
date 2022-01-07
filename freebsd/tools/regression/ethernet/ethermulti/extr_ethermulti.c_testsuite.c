
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int,char*,int) ;
 int get_socket (int ,int ) ;
 int test_ether_multi (int) ;

__attribute__((used)) static void
testsuite(int priv)
{
 int sock;

 sock = get_socket(SOCK_DGRAM, 0);
 if (sock == -1)
  err(-1, "get_socket(SOCK_DGRAM) for test_ether_multi()", priv);
 test_ether_multi(sock);
 close(sock);
}
