
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_pack_object {scalar_t__ offset; TYPE_1__* object; } ;
struct TYPE_2__ {int oid; } ;


 int oidcmp (int *,int *) ;

__attribute__((used)) static int ofscmp(const void *a_, const void *b_)
{
 struct in_pack_object *a = (struct in_pack_object *)a_;
 struct in_pack_object *b = (struct in_pack_object *)b_;

 if (a->offset < b->offset)
  return -1;
 else if (a->offset > b->offset)
  return 1;
 else
  return oidcmp(&a->object->oid, &b->object->oid);
}
