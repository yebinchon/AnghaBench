
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* s_addr; } ;
struct TYPE_3__ {void* s_addr; } ;
struct ip_mreq {TYPE_2__ imr_interface; TYPE_1__ imr_multiaddr; } ;


 char* TEST_MADDR ;
 int WARN_SUCCESS ;
 void* inet_addr (char*) ;
 int test_add_multi (int,char*,struct ip_mreq,int ) ;
 int test_drop_multi (int,char*,struct ip_mreq,int ) ;

__attribute__((used)) static void
test_addr(int raw_sock, int tcp_sock, int udp_sock)
{
 struct ip_mreq imr;


 imr.imr_multiaddr.s_addr = inet_addr(TEST_MADDR);


 imr.imr_interface.s_addr = inet_addr("127.0.0.1");

 test_add_multi(raw_sock, "raw_sock", imr, 0);
 test_drop_multi(raw_sock, "raw_sock", imr, 0);

 test_add_multi(tcp_sock, "raw_sock", imr, WARN_SUCCESS);
 test_drop_multi(tcp_sock, "raw_sock", imr, WARN_SUCCESS);

 test_add_multi(udp_sock, "raw_sock", imr, 0);
 test_drop_multi(udp_sock, "raw_sock", imr, 0);
}
