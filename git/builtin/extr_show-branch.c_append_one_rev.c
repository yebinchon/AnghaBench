
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int MAX_REVS ;
 int _ (char*) ;
 int append_matching_ref ;
 int append_ref (char const*,struct object_id*,int ) ;
 int count_slashes (char const*) ;
 int die (char*,char const*) ;
 int error (int ,char const*) ;
 int for_each_ref (int ,int *) ;
 int get_oid (char const*,struct object_id*) ;
 char const* match_ref_pattern ;
 int match_ref_slash ;
 int ref_name_cnt ;
 int sort_ref_range (int,int) ;
 scalar_t__ strchr (char const*,char) ;

__attribute__((used)) static void append_one_rev(const char *av)
{
 struct object_id revkey;
 if (!get_oid(av, &revkey)) {
  append_ref(av, &revkey, 0);
  return;
 }
 if (strchr(av, '*') || strchr(av, '?') || strchr(av, '[')) {

  int saved_matches = ref_name_cnt;

  match_ref_pattern = av;
  match_ref_slash = count_slashes(av);
  for_each_ref(append_matching_ref, ((void*)0));
  if (saved_matches == ref_name_cnt &&
      ref_name_cnt < MAX_REVS)
   error(_("no matching refs with %s"), av);
  sort_ref_range(saved_matches, ref_name_cnt);
  return;
 }
 die("bad sha1 reference %s", av);
}
