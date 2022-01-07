
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
mock_igb0(void)
{
 mock_ifaddr4("igb0", "192.0.2.2", "255.255.255.128", "192.0.2.127",
     IFF_UP | IFF_BROADCAST | IFF_RUNNING | IFF_SIMPLEX | IFF_MULTICAST,
     0);
 mock_ifaddr6("igb0", "2001:db8::2", "ffff:ffff:ffff:ffff::",
     "2001:db8::ffff:ffff:ffff:ffff",
     IFF_UP | IFF_BROADCAST | IFF_RUNNING | IFF_SIMPLEX | IFF_MULTICAST,
     0, 0);

 mock_ifaddr6("igb0", "fe80::2", "ffff:ffff:ffff:ffff::",
     "fe80::ffff:ffff:ffff:ffff",
     IFF_UP | IFF_BROADCAST | IFF_RUNNING | IFF_SIMPLEX | IFF_MULTICAST,
     2, 0);
}
