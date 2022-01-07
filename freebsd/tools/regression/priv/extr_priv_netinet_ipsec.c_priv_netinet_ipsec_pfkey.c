
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct test {int dummy; } ;


 int EPERM ;
 int EPROTONOSUPPORT ;
 int PF_KEY ;
 int PF_KEY_V2 ;
 int SOCK_RAW ;
 int close (int) ;
 int expect (char*,int,int,int ) ;
 int socket (int ,int ,int ) ;

void
priv_netinet_ipsec_pfkey(int asroot, int injail, struct test *test)
{
 int error, fd;

 fd = socket(PF_KEY, SOCK_RAW, PF_KEY_V2);
 if (fd < 0)
  error = -1;
 else
  error = 0;




 if (asroot && injail)
  expect("priv_netinet_ipsec_pfkey(asroot, injail)", error,
      -1, EPROTONOSUPPORT);
 if (asroot && !injail)
  expect("priv_netinet_ipsec_pfkey(asroot, !injail)", error,
      0, 0);
 if (!asroot && injail)
  expect("priv_netinet_ipsec_pfkey(!asroot, injail)", error,
      -1, EPROTONOSUPPORT);
 if (!asroot && !injail)
  expect("priv_netinet_ipsec_pfkey(!asroot, !injail)", error,
      -1, EPERM);
 if (fd >= 0)
  (void)close(fd);
}
