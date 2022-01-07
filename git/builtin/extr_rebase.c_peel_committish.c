
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct commit {int dummy; } ;


 int OBJ_COMMIT ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ peel_to_type (char const*,int ,struct object*,int ) ;
 int the_repository ;

__attribute__((used)) static struct commit *peel_committish(const char *name)
{
 struct object *obj;
 struct object_id oid;

 if (get_oid(name, &oid))
  return ((void*)0);
 obj = parse_object(the_repository, &oid);
 return (struct commit *)peel_to_type(name, 0, obj, OBJ_COMMIT);
}
