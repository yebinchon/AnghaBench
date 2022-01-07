
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int ERROR_REFS ;
 int _ (char*) ;
 int error (int ,char const*,...) ;
 int errors_found ;
 int fprintf_ln (int ,int ,char const*,...) ;
 scalar_t__ is_null_oid (struct object_id*) ;
 char* resolve_ref_unsafe (char const*,int ,struct object_id*,int *) ;
 int starts_with (char const*,char*) ;
 int stderr ;
 int strcmp (char const*,char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static int fsck_head_link(const char *head_ref_name,
     const char **head_points_at,
     struct object_id *head_oid)
{
 int null_is_error = 0;

 if (verbose)
  fprintf_ln(stderr, _("Checking %s link"), head_ref_name);

 *head_points_at = resolve_ref_unsafe(head_ref_name, 0, head_oid, ((void*)0));
 if (!*head_points_at) {
  errors_found |= ERROR_REFS;
  return error(_("invalid %s"), head_ref_name);
 }
 if (!strcmp(*head_points_at, head_ref_name))

  null_is_error = 1;
 else if (!starts_with(*head_points_at, "refs/heads/")) {
  errors_found |= ERROR_REFS;
  return error(_("%s points to something strange (%s)"),
        head_ref_name, *head_points_at);
 }
 if (is_null_oid(head_oid)) {
  if (null_is_error) {
   errors_found |= ERROR_REFS;
   return error(_("%s: detached HEAD points at nothing"),
         head_ref_name);
  }
  fprintf_ln(stderr,
      _("notice: %s points to an unborn branch (%s)"),
      head_ref_name, *head_points_at + 11);
 }
 return 0;
}
