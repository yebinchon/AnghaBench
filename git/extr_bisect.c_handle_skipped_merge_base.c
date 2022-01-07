
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int _ (char*) ;
 struct object_id const* current_bad_oid ;
 int free (char*) ;
 int good_revs ;
 char* join_sha1_array_hex (int *,char) ;
 char* oid_to_hex (struct object_id const*) ;
 int term_bad ;
 int warning (int ,char*,char*,int ,char*,char*) ;

__attribute__((used)) static void handle_skipped_merge_base(const struct object_id *mb)
{
 char *mb_hex = oid_to_hex(mb);
 char *bad_hex = oid_to_hex(current_bad_oid);
 char *good_hex = join_sha1_array_hex(&good_revs, ' ');

 warning(_("the merge base between %s and [%s] "
  "must be skipped.\n"
  "So we cannot be sure the first %s commit is "
  "between %s and %s.\n"
  "We continue anyway."),
  bad_hex, good_hex, term_bad, mb_hex, bad_hex);
 free(good_hex);
}
