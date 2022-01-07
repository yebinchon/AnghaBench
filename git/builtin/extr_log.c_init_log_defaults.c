
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int auto_decoration_style () ;
 int decoration_style ;
 int init_diff_ui_defaults () ;
 int init_grep_defaults (int ) ;
 int the_repository ;

__attribute__((used)) static void init_log_defaults(void)
{
 init_grep_defaults(the_repository);
 init_diff_ui_defaults();

 decoration_style = auto_decoration_style();
}
