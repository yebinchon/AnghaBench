
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oid {int* id; int len; } ;



__attribute__((used)) static void
oid_get_root(struct oid *o)
{

 o->id[0] = 1;
 o->len = 1;
}
