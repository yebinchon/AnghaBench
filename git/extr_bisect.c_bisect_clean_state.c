
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int strdup_strings; } ;


 int REF_NO_DEREF ;
 struct string_list STRING_LIST_INIT_NODUP ;
 int delete_refs (char*,struct string_list*,int ) ;
 int for_each_ref_in (char*,int ,void*) ;
 int git_path_bisect_ancestors_ok () ;
 int git_path_bisect_expected_rev () ;
 int git_path_bisect_log () ;
 int git_path_bisect_names () ;
 int git_path_bisect_run () ;
 int git_path_bisect_start () ;
 int git_path_bisect_terms () ;
 int git_path_head_name () ;
 int mark_for_removal ;
 int string_list_append (struct string_list*,int ) ;
 int string_list_clear (struct string_list*,int ) ;
 int unlink_or_warn (int ) ;
 int xstrdup (char*) ;

int bisect_clean_state(void)
{
 int result = 0;


 struct string_list refs_for_removal = STRING_LIST_INIT_NODUP;
 for_each_ref_in("refs/bisect", mark_for_removal, (void *) &refs_for_removal);
 string_list_append(&refs_for_removal, xstrdup("BISECT_HEAD"));
 result = delete_refs("bisect: remove", &refs_for_removal, REF_NO_DEREF);
 refs_for_removal.strdup_strings = 1;
 string_list_clear(&refs_for_removal, 0);
 unlink_or_warn(git_path_bisect_expected_rev());
 unlink_or_warn(git_path_bisect_ancestors_ok());
 unlink_or_warn(git_path_bisect_log());
 unlink_or_warn(git_path_bisect_names());
 unlink_or_warn(git_path_bisect_run());
 unlink_or_warn(git_path_bisect_terms());

 unlink_or_warn(git_path_head_name());




 unlink_or_warn(git_path_bisect_start());

 return result;
}
