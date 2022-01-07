
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int dummy; } ;
struct object_id {int dummy; } ;


 scalar_t__ oidset_insert (struct oidset*,struct object_id const*) ;
 scalar_t__ ref_is_hidden (char const*,char const*) ;
 int show_ref (char const*,struct object_id const*) ;
 char* strip_namespace (char const*) ;

__attribute__((used)) static int show_ref_cb(const char *path_full, const struct object_id *oid,
         int flag, void *data)
{
 struct oidset *seen = data;
 const char *path = strip_namespace(path_full);

 if (ref_is_hidden(path, path_full))
  return 0;






 if (!path) {
  if (oidset_insert(seen, oid))
   return 0;
  path = ".have";
 } else {
  oidset_insert(seen, oid);
 }
 show_ref(path, oid);
 return 0;
}
