
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {int dummy; } ;
typedef scalar_t__ int64_t ;


 int ERANGE ;
 int bcopy (scalar_t__*,int *,int) ;

__attribute__((used)) static int
ng_int64_getDefault(const struct ng_parse_type *type,
 const u_char *const start, u_char *buf, int *buflen)
{
 int64_t val;

 if (*buflen < sizeof(int64_t))
  return (ERANGE);
 val = 0;
 bcopy(&val, buf, sizeof(int64_t));
 *buflen = sizeof(int64_t);
 return (0);
}
