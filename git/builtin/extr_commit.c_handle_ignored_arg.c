
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int show_ignored_mode; } ;


 int SHOW_MATCHING_IGNORED ;
 int SHOW_NO_IGNORED ;
 int SHOW_TRADITIONAL_IGNORED ;
 int _ (char*) ;
 int die (int ,int ) ;
 int ignored_arg ;
 int strcmp (int ,char*) ;

__attribute__((used)) static void handle_ignored_arg(struct wt_status *s)
{
 if (!ignored_arg)
  ;
 else if (!strcmp(ignored_arg, "traditional"))
  s->show_ignored_mode = SHOW_TRADITIONAL_IGNORED;
 else if (!strcmp(ignored_arg, "no"))
  s->show_ignored_mode = SHOW_NO_IGNORED;
 else if (!strcmp(ignored_arg, "matching"))
  s->show_ignored_mode = SHOW_MATCHING_IGNORED;
 else
  die(_("Invalid ignored mode '%s'"), ignored_arg);
}
