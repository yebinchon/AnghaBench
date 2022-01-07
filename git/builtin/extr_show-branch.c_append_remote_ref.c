
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int append_ref (char const*,struct object_id const*,int ) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int oideq (struct object_id*,struct object_id const*) ;
 int starts_with (char const*,char*) ;

__attribute__((used)) static int append_remote_ref(const char *refname, const struct object_id *oid,
        int flag, void *cb_data)
{
 struct object_id tmp;
 int ofs = 13;
 if (!starts_with(refname, "refs/remotes/"))
  return 0;



 if (get_oid(refname + ofs, &tmp) || !oideq(&tmp, oid))
  ofs = 5;
 return append_ref(refname + ofs, oid, 0);
}
