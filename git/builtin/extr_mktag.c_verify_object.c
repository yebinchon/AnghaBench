
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int check_object_signature (struct object_id const*,void*,unsigned long,char const*) ;
 int free (void*) ;
 struct object_id* lookup_replace_object (int ,struct object_id const*) ;
 void* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int the_repository ;
 int type_from_string (char const*) ;

__attribute__((used)) static int verify_object(const struct object_id *oid, const char *expected_type)
{
 int ret = -1;
 enum object_type type;
 unsigned long size;
 void *buffer = read_object_file(oid, &type, &size);
 const struct object_id *repl = lookup_replace_object(the_repository, oid);

 if (buffer) {
  if (type == type_from_string(expected_type))
   ret = check_object_signature(repl, buffer, size, expected_type);
  free(buffer);
 }
 return ret;
}
