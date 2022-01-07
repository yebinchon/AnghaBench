
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct named_object {scalar_t__ set; int name; } ;


 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static int
objhash_cmp_name(struct named_object *no, const void *name, uint32_t set)
{

 if ((strcmp(no->name, (const char *)name) == 0) && (no->set == set))
  return (0);

 return (1);
}
