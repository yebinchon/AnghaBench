
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFF_LOOPBACK ;
 int IFF_MULTICAST ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int mock_ifaddr4 (char*,char*,char*,char*,int,int) ;
 int mock_ifaddr6 (char*,char*,char*,char*,int,int ,int) ;

__attribute__((used)) static void
mock_lo0(void)
{




 mock_ifaddr4("lo0", "127.0.0.1", "255.0.0.0", "127.0.0.1",
     IFF_LOOPBACK | IFF_UP | IFF_RUNNING | IFF_MULTICAST, 0);
 mock_ifaddr6("lo0", "::1", "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
     "::1",
     IFF_LOOPBACK | IFF_UP | IFF_RUNNING | IFF_MULTICAST, 0, 0);
}
