
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int append_head_ref (char const*,struct object_id const*,int,void*) ;
 int append_ref (char const*,struct object_id const*,int ) ;
 int append_tag_ref (char const*,struct object_id const*,int,void*) ;
 int count_slashes (char const*) ;
 int match_ref_pattern ;
 int match_ref_slash ;
 scalar_t__ starts_with (char const*,char*) ;
 scalar_t__ wildmatch (int ,char const*,int ) ;

__attribute__((used)) static int append_matching_ref(const char *refname, const struct object_id *oid,
          int flag, void *cb_data)
{




 const char *tail;
 int slash = count_slashes(refname);
 for (tail = refname; *tail && match_ref_slash < slash; )
  if (*tail++ == '/')
   slash--;
 if (!*tail)
  return 0;
 if (wildmatch(match_ref_pattern, tail, 0))
  return 0;
 if (starts_with(refname, "refs/heads/"))
  return append_head_ref(refname, oid, flag, cb_data);
 if (starts_with(refname, "refs/tags/"))
  return append_tag_ref(refname, oid, flag, cb_data);
 return append_ref(refname, oid, 0);
}
