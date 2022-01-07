
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int ERANGE ;
 scalar_t__ ETHER_ADDR_LEN ;
 int snprintf (char*,int,char*,int const,int const,int const,int const,int const,int const) ;

__attribute__((used)) static int
ng_enaddr_unparse(const struct ng_parse_type *type,
 const u_char *data, int *off, char *cbuf, int cbuflen)
{
 int len;

 len = snprintf(cbuf, cbuflen, "%02x:%02x:%02x:%02x:%02x:%02x",
     data[*off], data[*off + 1], data[*off + 2],
     data[*off + 3], data[*off + 4], data[*off + 5]);
 if (len >= cbuflen)
  return (ERANGE);
 *off += ETHER_ADDR_LEN;
 return (0);
}
