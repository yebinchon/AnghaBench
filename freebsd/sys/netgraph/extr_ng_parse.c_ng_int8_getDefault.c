
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;
typedef scalar_t__ int8_t ;


 int ERANGE ;
 int bcopy (scalar_t__*,int *,int) ;

__attribute__((used)) static int
ng_int8_getDefault(const struct ng_parse_type *type,
 const u_char *const start, u_char *buf, int *buflen)
{
 int8_t val;

 if (*buflen < sizeof(int8_t))
  return (ERANGE);
 val = 0;
 bcopy(&val, buf, sizeof(int8_t));
 *buflen = sizeof(int8_t);
 return (0);
}
