
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef int config_fn_t ;


 int _ (char*) ;
 int error (int ,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_config_from_blob_oid (int ,char const*,struct object_id*,void*) ;

__attribute__((used)) static int git_config_from_blob_ref(config_fn_t fn,
        const char *name,
        void *data)
{
 struct object_id oid;

 if (get_oid(name, &oid) < 0)
  return error(_("unable to resolve config blob '%s'"), name);
 return git_config_from_blob_oid(fn, name, &oid, data);
}
