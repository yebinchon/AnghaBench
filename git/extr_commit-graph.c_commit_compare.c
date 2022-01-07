
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int oidcmp (int *,int *) ;

__attribute__((used)) static int commit_compare(const void *_a, const void *_b)
{
 const struct commit *a = *(const struct commit **)_a;
 const struct commit *b = *(const struct commit **)_b;
 return oidcmp(&a->object.oid, &b->object.oid);
}
