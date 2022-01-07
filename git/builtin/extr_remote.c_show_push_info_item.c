
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* string; struct push_info* util; } ;
struct show_info {int width; int width2; } ;
struct push_info {int status; int dest; scalar_t__ forced; } ;
 char* _ (char*) ;
 int printf_ln (char*,int ,char const*,int ,...) ;

__attribute__((used)) static int show_push_info_item(struct string_list_item *item, void *cb_data)
{
 struct show_info *show_info = cb_data;
 struct push_info *push_info = item->util;
 const char *src = item->string, *status = ((void*)0);

 switch (push_info->status) {
 case 133:
  status = _("create");
  break;
 case 132:
  status = _("delete");
  src = _("(none)");
  break;
 case 128:
  status = _("up to date");
  break;
 case 131:
  status = _("fast-forwardable");
  break;
 case 129:
  status = _("local out of date");
  break;
 case 130:
  break;
 }
 if (status) {
  if (push_info->forced)
   printf_ln(_("    %-*s forces to %-*s (%s)"), show_info->width, src,
          show_info->width2, push_info->dest, status);
  else
   printf_ln(_("    %-*s pushes to %-*s (%s)"), show_info->width, src,
          show_info->width2, push_info->dest, status);
 } else {
  if (push_info->forced)
   printf_ln(_("    %-*s forces to %s"), show_info->width, src,
          push_info->dest);
  else
   printf_ln(_("    %-*s pushes to %s"), show_info->width, src,
          push_info->dest);
 }
 return 0;
}
