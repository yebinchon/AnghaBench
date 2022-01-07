
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_rights_t ;


 int AF_INET6 ;
 int CAP_CONNECT ;
 int CAP_SEND ;
 int SOCK_RAW ;
 int cap_rights_init (int *,int ,int ) ;
 scalar_t__ caph_rights_limit (int,int *) ;
 int socket (int ,int ,int) ;

__attribute__((used)) static int
getsocket(int *sockp, int proto)
{
 cap_rights_t rights;
 int sock;

 if (*sockp >= 0)
  return (0);

 if ((sock = socket(AF_INET6, SOCK_RAW, proto)) < 0)
  return (-1);
 cap_rights_init(&rights, CAP_CONNECT, CAP_SEND);
 if (caph_rights_limit(sock, &rights) != 0)
  return (-1);
 *sockp = sock;

 return (0);
}
