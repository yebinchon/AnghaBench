
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid {int len; int id; } ;


 int err (int,char*,char const*) ;
 int nitems (int ) ;
 scalar_t__ sysctlnametomib (char const*,int ,int *) ;

__attribute__((used)) static void
oid_get_by_name(struct oid *o, const char *name)
{

 o->len = nitems(o->id);
 if (sysctlnametomib(name, o->id, &o->len) != 0)
  err(1, "sysctl(%s)", name);
}
