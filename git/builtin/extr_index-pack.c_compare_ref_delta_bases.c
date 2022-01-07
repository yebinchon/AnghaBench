
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int oidcmp (struct object_id const*,struct object_id const*) ;

__attribute__((used)) static int compare_ref_delta_bases(const struct object_id *oid1,
       const struct object_id *oid2,
       enum object_type type1,
       enum object_type type2)
{
 int cmp = type1 - type2;
 if (cmp)
  return cmp;
 return oidcmp(oid1, oid2);
}
