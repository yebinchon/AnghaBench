
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;
struct in_addr {int member_0; } ;
typedef int ip ;


 int ERANGE ;
 int bcopy (struct in_addr*,int *,int) ;

__attribute__((used)) static int
ng_ipaddr_getDefault(const struct ng_parse_type *type,
 const u_char *const start, u_char *buf, int *buflen)
{
 struct in_addr ip = { 0 };

 if (*buflen < sizeof(ip))
  return (ERANGE);
 bcopy(&ip, buf, sizeof(ip));
 *buflen = sizeof(ip);
 return (0);
}
