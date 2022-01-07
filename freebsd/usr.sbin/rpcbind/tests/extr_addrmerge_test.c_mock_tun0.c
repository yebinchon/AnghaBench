
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFF_MULTICAST ;
 int IFF_POINTOPOINT ;
 int IFF_RUNNING ;
 int IFF_UP ;
 int mock_ifaddr4 (char*,char*,char*,char*,int,int) ;
 int mock_ifaddr6 (char*,char*,char*,char*,int,int ,int) ;

__attribute__((used)) static void
mock_tun0(void)
{
 mock_ifaddr4("tun0", "192.0.2.5", "255.255.255.255", "192.0.2.6",
     IFF_UP | IFF_RUNNING | IFF_POINTOPOINT | IFF_MULTICAST, 0);
 mock_ifaddr6("tun0", "2001:db8::5",
     "ffff:ffff:ffff:ffff:ffff:ffff:ffff:ffff",
     "2001:db8::6",
     IFF_UP | IFF_RUNNING | IFF_POINTOPOINT | IFF_MULTICAST, 0, 0);
}
