
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct am_state {int dummy; } ;
typedef enum patch_format { ____Placeholder_patch_format } patch_format ;


 int BUG (char*) ;





 int git_config_get_bool (char*,int*) ;
 int hg_patch_to_mail ;
 int split_mail_conv (int ,struct am_state*,char const**,int) ;
 int split_mail_mbox (struct am_state*,char const**,int,int) ;
 int split_mail_stgit_series (struct am_state*,char const**,int) ;
 int stgit_patch_to_mail ;

__attribute__((used)) static int split_mail(struct am_state *state, enum patch_format patch_format,
   const char **paths, int keep_cr)
{
 if (keep_cr < 0) {
  keep_cr = 0;
  git_config_get_bool("am.keepcr", &keep_cr);
 }

 switch (patch_format) {
 case 131:
  return split_mail_mbox(state, paths, keep_cr, 0);
 case 129:
  return split_mail_conv(stgit_patch_to_mail, state, paths, keep_cr);
 case 128:
  return split_mail_stgit_series(state, paths, keep_cr);
 case 132:
  return split_mail_conv(hg_patch_to_mail, state, paths, keep_cr);
 case 130:
  return split_mail_mbox(state, paths, keep_cr, 1);
 default:
  BUG("invalid patch_format");
 }
 return -1;
}
