
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;


 int ERANGE ;
 int bzero (int *,int) ;

__attribute__((used)) static int
ng_sizedstring_getDefault(const struct ng_parse_type *type,
 const u_char *const start, u_char *buf, int *buflen)
{
 if (*buflen < 2)
  return (ERANGE);
 bzero(buf, 2);
 *buflen = 2;
 return (0);
}
