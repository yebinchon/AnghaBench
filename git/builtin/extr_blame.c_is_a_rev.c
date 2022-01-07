
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 scalar_t__ OBJ_NONE ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 scalar_t__ oid_object_info (int ,struct object_id*,int *) ;
 int the_repository ;

__attribute__((used)) static int is_a_rev(const char *name)
{
 struct object_id oid;

 if (get_oid(name, &oid))
  return 0;
 return OBJ_NONE < oid_object_info(the_repository, &oid, ((void*)0));
}
