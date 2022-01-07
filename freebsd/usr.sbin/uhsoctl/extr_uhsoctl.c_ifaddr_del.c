
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int SIOCDIFADDR ;
 int ifaddr_ad (int ,char const*,struct sockaddr*,struct sockaddr*) ;
 int warn (char*) ;

__attribute__((used)) static int
ifaddr_del(const char *ifnam, struct sockaddr *sa, struct sockaddr *mask)
{
 int error;

 error = ifaddr_ad(SIOCDIFADDR, ifnam, sa, mask);
 if (error != 0)
  warn("ioctl SIOCDIFADDR");
 return (error);
}
