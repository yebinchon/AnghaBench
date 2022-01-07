
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct ng_parse_type {int dummy; } ;


 int ERANGE ;

__attribute__((used)) static int
ng_string_getDefault(const struct ng_parse_type *type,
 const u_char *const start, u_char *buf, int *buflen)
{

 if (*buflen < 1)
  return (ERANGE);
 buf[0] = (u_char)'\0';
 *buflen = 1;
 return (0);
}
