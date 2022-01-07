
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree {int dummy; } ;
struct object_id {int dummy; } ;
struct object {scalar_t__ type; } ;
struct commit {int dummy; } ;


 scalar_t__ OBJ_COMMIT ;
 scalar_t__ OBJ_TREE ;
 int error (char*,int ,char*) ;
 int oid_to_hex (struct object_id*) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ parse_oid_hex (char*,struct object_id*,char const**) ;
 int stdin_diff_commit (struct commit*,char const*) ;
 int stdin_diff_trees (struct tree*,char const*) ;
 int strlen (char*) ;
 int the_repository ;
 char* type_name (scalar_t__) ;

__attribute__((used)) static int diff_tree_stdin(char *line)
{
 int len = strlen(line);
 struct object_id oid;
 struct object *obj;
 const char *p;

 if (!len || line[len-1] != '\n')
  return -1;
 line[len-1] = 0;
 if (parse_oid_hex(line, &oid, &p))
  return -1;
 obj = parse_object(the_repository, &oid);
 if (!obj)
  return -1;
 if (obj->type == OBJ_COMMIT)
  return stdin_diff_commit((struct commit *)obj, p);
 if (obj->type == OBJ_TREE)
  return stdin_diff_trees((struct tree *)obj, p);
 error("Object %s is a %s, not a commit or tree",
       oid_to_hex(&oid), type_name(obj->type));
 return -1;
}
