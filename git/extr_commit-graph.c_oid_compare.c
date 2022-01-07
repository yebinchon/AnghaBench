
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int oidcmp (struct object_id const*,struct object_id const*) ;

__attribute__((used)) static int oid_compare(const void *_a, const void *_b)
{
 const struct object_id *a = (const struct object_id *)_a;
 const struct object_id *b = (const struct object_id *)_b;
 return oidcmp(a, b);
}
