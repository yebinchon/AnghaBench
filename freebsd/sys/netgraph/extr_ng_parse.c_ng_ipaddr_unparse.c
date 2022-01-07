
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;
struct in_addr {int dummy; } ;
typedef int ip ;


 int bcopy (int const*,struct in_addr*,int) ;
 int ng_parse_append (char**,int*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int
ng_ipaddr_unparse(const struct ng_parse_type *type,
 const u_char *data, int *off, char *cbuf, int cbuflen)
{
 struct in_addr ip;
 int error;

 bcopy(data + *off, &ip, sizeof(ip));
 if ((error = ng_parse_append(&cbuf, &cbuflen, "%d.%d.%d.%d",
     ((u_char *)&ip)[0], ((u_char *)&ip)[1],
     ((u_char *)&ip)[2], ((u_char *)&ip)[3])) != 0)
  return (error);
 *off += sizeof(ip);
 return (0);
}
