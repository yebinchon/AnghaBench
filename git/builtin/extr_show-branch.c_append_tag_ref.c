
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int append_ref (char const*,struct object_id const*,int ) ;
 int starts_with (char const*,char*) ;

__attribute__((used)) static int append_tag_ref(const char *refname, const struct object_id *oid,
     int flag, void *cb_data)
{
 if (!starts_with(refname, "refs/tags/"))
  return 0;
 return append_ref(refname + 5, oid, 0);
}
