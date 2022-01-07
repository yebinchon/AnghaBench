
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {void* s_addr; } ;


 int IP_MULTICAST_IF ;
 int WARN_SUCCESS ;
 void* inet_addr (char*) ;
 int test_in_addr (int ,char*,struct in_addr,struct in_addr,struct in_addr,char*,int,int ) ;

__attribute__((used)) static void
test_if(int raw_sock, int tcp_sock, int udp_sock)
{
 struct in_addr defaultv, modifiedv, fakev;

 defaultv.s_addr = inet_addr("0.0.0.0");


 modifiedv.s_addr = inet_addr("127.0.0.1");


 fakev.s_addr = inet_addr("255.255.255.255");

 test_in_addr(IP_MULTICAST_IF, "IP_MULTICAST_IF", defaultv, modifiedv,
     fakev, "raw_sock", raw_sock, 0);
 test_in_addr(IP_MULTICAST_IF, "IP_MULTICAST_IF", defaultv, modifiedv,
     fakev, "tcp_sock", tcp_sock, WARN_SUCCESS);
 test_in_addr(IP_MULTICAST_IF, "IP_MULTICAST_IF", defaultv, modifiedv,
     fakev, "udp_sock", udp_sock, 0);
}
