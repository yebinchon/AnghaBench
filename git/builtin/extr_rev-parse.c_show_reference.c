
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int NORMAL ;
 scalar_t__ ref_excluded (int ,char const*) ;
 int ref_excludes ;
 int show_rev (int ,struct object_id const*,char const*) ;

__attribute__((used)) static int show_reference(const char *refname, const struct object_id *oid, int flag, void *cb_data)
{
 if (ref_excluded(ref_excludes, refname))
  return 0;
 show_rev(NORMAL, oid, refname);
 return 0;
}
