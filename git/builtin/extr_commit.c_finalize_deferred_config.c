
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wt_status {scalar_t__ show_branch; scalar_t__ ahead_behind_flags; scalar_t__ null_termination; } ;
struct TYPE_2__ {scalar_t__ status_format; scalar_t__ show_branch; scalar_t__ ahead_behind; } ;


 scalar_t__ AHEAD_BEHIND_FULL ;
 scalar_t__ AHEAD_BEHIND_UNSPECIFIED ;
 scalar_t__ STATUS_FORMAT_LONG ;
 scalar_t__ STATUS_FORMAT_NONE ;
 scalar_t__ STATUS_FORMAT_PORCELAIN ;
 scalar_t__ STATUS_FORMAT_PORCELAIN_V2 ;
 scalar_t__ STATUS_FORMAT_UNSPECIFIED ;
 int _ (char*) ;
 int die (int ) ;
 TYPE_1__ status_deferred_config ;
 scalar_t__ status_format ;

__attribute__((used)) static void finalize_deferred_config(struct wt_status *s)
{
 int use_deferred_config = (status_format != STATUS_FORMAT_PORCELAIN &&
       status_format != STATUS_FORMAT_PORCELAIN_V2 &&
       !s->null_termination);

 if (s->null_termination) {
  if (status_format == STATUS_FORMAT_NONE ||
      status_format == STATUS_FORMAT_UNSPECIFIED)
   status_format = STATUS_FORMAT_PORCELAIN;
  else if (status_format == STATUS_FORMAT_LONG)
   die(_("--long and -z are incompatible"));
 }

 if (use_deferred_config && status_format == STATUS_FORMAT_UNSPECIFIED)
  status_format = status_deferred_config.status_format;
 if (status_format == STATUS_FORMAT_UNSPECIFIED)
  status_format = STATUS_FORMAT_NONE;

 if (use_deferred_config && s->show_branch < 0)
  s->show_branch = status_deferred_config.show_branch;
 if (s->show_branch < 0)
  s->show_branch = 0;
 if (use_deferred_config &&
     s->ahead_behind_flags == AHEAD_BEHIND_UNSPECIFIED)
  s->ahead_behind_flags = status_deferred_config.ahead_behind;

 if (s->ahead_behind_flags == AHEAD_BEHIND_UNSPECIFIED)
  s->ahead_behind_flags = AHEAD_BEHIND_FULL;
}
