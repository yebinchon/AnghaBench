
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 scalar_t__ errno ;
 scalar_t__ parse_oid_hex (char*,struct object_id*,char const**) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int parse_new_style_cacheinfo(const char *arg,
         unsigned int *mode,
         struct object_id *oid,
         const char **path)
{
 unsigned long ul;
 char *endp;
 const char *p;

 if (!arg)
  return -1;

 errno = 0;
 ul = strtoul(arg, &endp, 8);
 if (errno || endp == arg || *endp != ',' || (unsigned int) ul != ul)
  return -1;
 *mode = ul;
 endp++;
 if (parse_oid_hex(endp, oid, &p) || *p != ',')
  return -1;
 *path = p + 1;
 return 0;
}
