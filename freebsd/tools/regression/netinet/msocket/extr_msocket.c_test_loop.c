
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IP_MULTICAST_LOOP ;
 int WARN_SUCCESS ;
 int test_u_char (int ,char*,int,int ,int,char*,int,int ) ;

__attribute__((used)) static void
test_loop(int raw_sock, int tcp_sock, int udp_sock)
{

 test_u_char(IP_MULTICAST_LOOP, "IP_MULTICAST_LOOP", 1, 0, 243,
     "raw_sock", raw_sock, 0);
 test_u_char(IP_MULTICAST_LOOP, "IP_MULTICAST_LOOP", 1, 0, 243,
     "tcp_sock", tcp_sock, WARN_SUCCESS);
 test_u_char(IP_MULTICAST_LOOP, "IP_MULTICAST_LOOP", 1, 0, 243,
     "udp_sock", udp_sock, 0);
}
