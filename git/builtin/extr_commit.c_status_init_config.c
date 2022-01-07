
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wt_status {int hints; } ;
typedef int config_fn_t ;


 int advice_status_hints ;
 int determine_whence (struct wt_status*) ;
 int git_config (int ,struct wt_status*) ;
 int init_diff_ui_defaults () ;
 int the_repository ;
 int wt_status_prepare (int ,struct wt_status*) ;

__attribute__((used)) static void status_init_config(struct wt_status *s, config_fn_t fn)
{
 wt_status_prepare(the_repository, s);
 init_diff_ui_defaults();
 git_config(fn, s);
 determine_whence(s);
 s->hints = advice_status_hints;
}
