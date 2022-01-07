
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {scalar_t__ status; int name; int peer_ref; struct ref* next; } ;


 scalar_t__ REF_STATUS_REJECT_SHALLOW ;
 int _ (char*) ;
 int adjust_refcol_width (struct ref*) ;
 int compact_format ;
 int die (int ,char const*) ;
 int git_config_get_string_const (char*,char const**) ;
 int strcasecmp (char const*,char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void prepare_format_display(struct ref *ref_map)
{
 struct ref *rm;
 const char *format = "full";

 git_config_get_string_const("fetch.output", &format);
 if (!strcasecmp(format, "full"))
  compact_format = 0;
 else if (!strcasecmp(format, "compact"))
  compact_format = 1;
 else
  die(_("configuration fetch.output contains invalid value %s"),
      format);

 for (rm = ref_map; rm; rm = rm->next) {
  if (rm->status == REF_STATUS_REJECT_SHALLOW ||
      !rm->peer_ref ||
      !strcmp(rm->name, "HEAD"))
   continue;

  adjust_refcol_width(rm);
 }
}
