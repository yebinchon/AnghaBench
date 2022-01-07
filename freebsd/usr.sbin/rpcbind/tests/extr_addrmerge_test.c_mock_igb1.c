
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFF_BROADCAST ;
 int IFF_MULTICAST ;
 int IFF_RUNNING ;
 int IFF_SIMPLEX ;
 int IFF_UP ;
 int mock_ifaddr4 (char*,char*,char*,char*,int,int) ;
 int mock_ifaddr6 (char*,char*,char*,char*,int,int,int) ;

__attribute__((used)) static void
mock_igb1(bool bind)
{
 mock_ifaddr4("igb1", "192.0.2.3", "255.255.255.128", "192.0.2.127",
     IFF_UP | IFF_BROADCAST | IFF_RUNNING | IFF_SIMPLEX | IFF_MULTICAST,
     bind);
 mock_ifaddr6("igb1", "2001:db8::3", "ffff:ffff:ffff:ffff::",
     "2001:db8::ffff:ffff:ffff:ffff",
     IFF_UP | IFF_BROADCAST | IFF_RUNNING | IFF_SIMPLEX | IFF_MULTICAST,
     0, bind);

 mock_ifaddr6("igb1", "fe80::3", "ffff:ffff:ffff:ffff::",
     "fe80::ffff:ffff:ffff:ffff",
     IFF_UP | IFF_BROADCAST | IFF_RUNNING | IFF_SIMPLEX | IFF_MULTICAST,
     3, bind);
}
