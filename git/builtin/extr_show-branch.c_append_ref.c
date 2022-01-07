
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int MAX_REVS ;
 int Q_ (char*,char*,int) ;
 struct commit* lookup_commit_reference_gently (int ,struct object_id const*,int) ;
 int ** ref_name ;
 int ref_name_cnt ;
 int strcmp (char const*,int *) ;
 int the_repository ;
 int warning (int ,char const*,int) ;
 int * xstrdup (char const*) ;

__attribute__((used)) static int append_ref(const char *refname, const struct object_id *oid,
        int allow_dups)
{
 struct commit *commit = lookup_commit_reference_gently(the_repository,
              oid, 1);
 int i;

 if (!commit)
  return 0;

 if (!allow_dups) {

  for (i = 0; i < ref_name_cnt; i++)
   if (!strcmp(refname, ref_name[i]))
    return 0;
 }
 if (MAX_REVS <= ref_name_cnt) {
  warning(Q_("ignoring %s; cannot handle more than %d ref",
      "ignoring %s; cannot handle more than %d refs",
      MAX_REVS), refname, MAX_REVS);
  return 0;
 }
 ref_name[ref_name_cnt++] = xstrdup(refname);
 ref_name[ref_name_cnt] = ((void*)0);
 return 0;
}
