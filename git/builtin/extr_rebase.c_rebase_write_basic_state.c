
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rebase_options {char* head_name; int flags; scalar_t__ allow_rerere_autoupdate; scalar_t__ signoff; int gpg_sign_opt; int strategy_opts; int strategy; int orig_head; TYPE_2__* onto; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int REBASE_NO_QUIET ;
 int REBASE_VERBOSE ;
 scalar_t__ RERERE_AUTOUPDATE ;
 char* oid_to_hex (int *) ;
 int state_dir_path (char*,struct rebase_options*) ;
 int write_file (int ,char*,...) ;

__attribute__((used)) static int rebase_write_basic_state(struct rebase_options *opts)
{
 write_file(state_dir_path("head-name", opts), "%s",
     opts->head_name ? opts->head_name : "detached HEAD");
 write_file(state_dir_path("onto", opts), "%s",
     opts->onto ? oid_to_hex(&opts->onto->object.oid) : "");
 write_file(state_dir_path("orig-head", opts), "%s",
     oid_to_hex(&opts->orig_head));
 write_file(state_dir_path("quiet", opts), "%s",
     opts->flags & REBASE_NO_QUIET ? "" : "t");
 if (opts->flags & REBASE_VERBOSE)
  write_file(state_dir_path("verbose", opts), "%s", "");
 if (opts->strategy)
  write_file(state_dir_path("strategy", opts), "%s",
      opts->strategy);
 if (opts->strategy_opts)
  write_file(state_dir_path("strategy_opts", opts), "%s",
      opts->strategy_opts);
 if (opts->allow_rerere_autoupdate > 0)
  write_file(state_dir_path("allow_rerere_autoupdate", opts),
      "-%s-rerere-autoupdate",
      opts->allow_rerere_autoupdate == RERERE_AUTOUPDATE ?
    "" : "-no");
 if (opts->gpg_sign_opt)
  write_file(state_dir_path("gpg_sign_opt", opts), "%s",
      opts->gpg_sign_opt);
 if (opts->signoff)
  write_file(state_dir_path("strategy", opts), "--signoff");

 return 0;
}
