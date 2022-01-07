
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidformat {int dummy; } ;
struct oid {int len; int id; } ;
typedef int lookup ;


 int CTL_MAXNAME ;
 scalar_t__ ENOENT ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int memcpy (int*,int ,int) ;
 scalar_t__ sysctl (int*,int,struct oidformat*,size_t*,int ,int ) ;

__attribute__((used)) static bool
oid_get_format(const struct oid *o, struct oidformat *of)
{
 int lookup[CTL_MAXNAME + 2];
 size_t oflen;

 lookup[0] = 0;
 lookup[1] = 4;
 memcpy(lookup + 2, o->id, o->len * sizeof(lookup[0]));
 oflen = sizeof(*of);
 if (sysctl(lookup, 2 + o->len, of, &oflen, 0, 0) != 0) {
  if (errno == ENOENT)
   return (0);
  err(1, "sysctl(oidfmt)");
 }
 return (1);
}
