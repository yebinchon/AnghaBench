
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int oidcpy (struct object_id*,struct object_id const*) ;

__attribute__((used)) static int handle_submodule_head_ref(const char *refname,
         const struct object_id *oid, int flags,
         void *cb_data)
{
 struct object_id *output = cb_data;
 if (oid)
  oidcpy(output, oid);

 return 0;
}
