
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addrpolicy {int dummy; } ;
typedef int p ;


 int AF_INET6 ;
 int IPPROTO_UDP ;
 int SIOCDADDRCTL_POLICY ;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*,char*) ;
 scalar_t__ ioctl (int,int ,struct in6_addrpolicy*) ;
 int memset (struct in6_addrpolicy*,int ,int) ;
 scalar_t__ parse_prefix (char const*,struct in6_addrpolicy*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
delete_policy(char *prefix)
{
 struct in6_addrpolicy p;
 int s;

 memset(&p, 0, sizeof(p));

 if (parse_prefix((const char *)prefix, &p))
  errx(1, "bad prefix: %s", prefix);

 if ((s = socket(AF_INET6, SOCK_DGRAM, IPPROTO_UDP)) < 0)
  err(1, "socket(UDP)");
 if (ioctl(s, SIOCDADDRCTL_POLICY, &p))
  err(1, "ioctl(SIOCDADDRCTL_POLICY)");

 close(s);
}
