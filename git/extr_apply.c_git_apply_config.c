
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apply_default_ignorewhitespace ;
 int apply_default_whitespace ;
 int git_config (int ,int *) ;
 int git_config_get_string_const (char*,int *) ;
 int git_xmerge_config ;

__attribute__((used)) static void git_apply_config(void)
{
 git_config_get_string_const("apply.whitespace", &apply_default_whitespace);
 git_config_get_string_const("apply.ignorewhitespace", &apply_default_ignorewhitespace);
 git_config(git_xmerge_config, ((void*)0));
}
