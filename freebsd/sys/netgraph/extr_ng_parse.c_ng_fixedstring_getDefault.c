
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ng_parse_type {struct ng_parse_fixedstring_info* info; } ;
struct ng_parse_fixedstring_info {int bufSize; } ;


 int ERANGE ;
 int bzero (int *,int) ;

__attribute__((used)) static int
ng_fixedstring_getDefault(const struct ng_parse_type *type,
 const u_char *const start, u_char *buf, int *buflen)
{
 const struct ng_parse_fixedstring_info *const fi = type->info;

 if (*buflen < fi->bufSize)
  return (ERANGE);
 bzero(buf, fi->bufSize);
 *buflen = fi->bufSize;
 return (0);
}
